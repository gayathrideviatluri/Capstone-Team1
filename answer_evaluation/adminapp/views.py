from ast import Return

from django.db.models import Avg,Max,Min,Sum,Count,StdDev,Variance
from django.shortcuts import render,redirect,get_object_or_404
from django.contrib import messages
from adminapp.models import *
from userapp.models import *
from django.core.paginator import Paginator

def admin_index(request):
    pend = UserdetailsModel.objects.filter(user_status="pending").count()
    all = UserdetailsModel.objects.all().count()
    ques = QuestionModel.objects.all().count()
    ans = AnswerModel.objects.all().count()
    return render(request,"admin/admin-index.html",{'ques':ques,'all':all,'ans':ans,'pend':pend})

def admin_all(request):
    all=UserdetailsModel.objects.all() 
    paginator = Paginator(all,5)
    page_no = request.GET.get('page')
    page = paginator.get_page(page_no)
    return render(request,"admin/admin-all.html",{'all':page})

def admin_add_subject(request):
    sub =  SubjectModel.objects.all()
    if request.method == "POST" and request.FILES['photo']:
        subject = request.POST.get('subject')
        photo = request.FILES['photo']

        try:
            SubjectModel.objects.get(subject = subject.lower())
            
            messages.error(request,"This subject already exists, Try another subject")
            return redirect('admin_add_subject')
        except:
            SubjectModel.objects.create(subject = subject.lower(),subject_image = photo)
            messages.success(request,subject+" subject added successfully")
            return redirect('admin_add_subject')
    return render(request,"admin/admin-add-subject.html",{'sub':sub})


def admin_add_question(request):
    sub = SubjectModel.objects.all()
    print(sub,'sub model')
    if request.method == "POST":
        question = request.POST.get('question')
        answer = request.POST.get('answer')
        subject = request.POST.get('subject')
        if QuestionModel.objects.filter(subject = subject).count() <= 4:
            
            QuestionModel.objects.create(question = question,answer = answer,subject = subject)
            messages.success(request,"Question added successfully")
            return redirect('admin_add_question')
        else:
            messages.info(request,"Limit reached for question in "+subject+", Remove some question to add new question")
            return redirect('admin_add_question')
    return render(request,"admin/admin-add-question.html",{'sub':sub})

