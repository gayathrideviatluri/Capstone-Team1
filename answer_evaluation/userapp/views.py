from django.db.models import Avg,Max,Min,Sum,Count,StdDev,Variance
from django.shortcuts import render,redirect,get_object_or_404
from django.contrib import messages
from adminapp.models import *
from userapp.models import *
from django.core.paginator import Paginator
from userapp.text_similarity import *
import json
import ast

# Create your views here.
def index(request):
    return render(request,"user/index.html")

def admin_login(request):
    if request.method == "POST":
        username=request.POST.get("username")
        password=request.POST.get("password")

        if username == "admin" and password == "admin":
            messages.success(request, "Logged In Successfully.")
            return redirect('admin_index')
        else:
            messages.error(request,"Invalid Username or Password")
            return redirect('admin_login')
    return render(request,"admin/admin-login.html")

def user_login(request):
    if request.method == "POST":
        username=request.POST.get("email")
        password=request.POST.get("password")

        try:
            auth = UserdetailsModel.objects.get(user_email=username,user_password=password)
            if auth.user_status  == "accepted":
                request.session['user_id'] = auth.user_id
                messages.success(request,'Successfully Logged In')
                return redirect('user_dashboard')
            elif auth.user_status == "pending":
                messages.info(request,'Your id is pending for registration ')
                return redirect('user_login')
            elif auth.user_status == "blocked":
                messages.error(request,'You Are BLOCKED From Logging In ')
                return redirect('user_login')
            else:
                messages.error(request,'You are not registered,try again after signup')
                return redirect('user_login')
            
        except:
            messages.error(request,'invalid login credentials')
            return redirect('user_login')
    return render(request,"user/user-login.html")


def user_register(request):
    if request.method == "POST" and request.FILES["photo"] :
        name = request.POST['name']
        email = request.POST.get('email')
        contact = request.POST.get('contact')
        password = request.POST.get('password')
        id = request.POST.get('id')
        photo = request.FILES['photo']
        

        try:
            a = UserdetailsModel.objects.get(user_email=email)
            messages.info(request,"Email already exists,try again with another email")
            return redirect('user_register')
        except:

        
            user_create =UserdetailsModel.objects.create(user_name=name,user_email=email,user_password=password,user_contact=contact,student_id=id,user_photo=photo)
            
            
            if user_create:
                messages.success(request,"successfully Registered")
                return redirect('user_register')
            else:
                messages.error(request,"invalid details ,try again")
                return redirect('user_register')
    return render(request,"user/user-register.html")

def user_contact(request):
    return render(request,"user/user-contact.html")



def user_dashboard(request):
    user_id=request.session['user_id']
    user=UserdetailsModel.objects.get(user_id=user_id)
    exam  = AnswerModel.objects.filter(user_id=user_id).count()
    exams  = AnswerModel.objects.filter(user_id=user_id)
    sub = []
    for i in exams:
        if i.answer_subject not in sub:
            sub.append(i.answer_subject)
    ques = AnswerModel.objects.filter(user_id=user_id).count()*4
    su = len(sub)
    return render(request,"user/user-dashboard.html",{'exams':exam,'subjects':su,'ques':ques})


def user_questions(request,subject):
    user_id=request.session['user_id']
    user=UserdetailsModel.objects.get(user_id=user_id)
    
    sub = QuestionModel.objects.filter(subject = subject)
    for i in sub:
        pass
    if request.method == 'POST':
        q1 = request.POST.get('question1')
        q2 = request.POST.get('question3')
        q3 = request.POST.get('question4')
        q4 = request.POST.get('question5')
        q5 = request.POST.get('question6')

        r1 = int((text_similarity_nltk(q1,sub[0].answer))*20)
        r2 = int((text_similarity_nltk(q2,sub[1].answer))*20)
        r3 = int((text_similarity_nltk(q3,sub[2].answer))*20)
        r4 = int((text_similarity_nltk(q4,sub[3].answer))*20)
        r5 = int((text_similarity_nltk(q5,sub[4].answer))*20)

        score = r1+r2+r3+r4+r5
        grade =''
        if score == 0 or score <= 24:
            grade='F'
        elif score >= 25 and score <= 49:
            grade = 'C'
        elif score >=50 and score <= 75:
            grade = 'B'
        elif score >= 76 and score <= 100:
            grade = 'A'

        answer = {}
        answer['question1'] ={'question':sub[0].question,'answer':q1,'marks':str(r1)}
        answer['question2'] ={'question':sub[1].question,'answer':q2,'marks':str(r2)}
        answer['question3'] ={'question':sub[2].question,'answer':q3,'marks':str(r3)}
        answer['question4'] ={'question':sub[3].question,'answer':q4,'marks':str(r4)}
        answer['question5'] ={'question':sub[4].question,'answer':q5,'marks':str(r5)}

        AnswerModel.objects.create(answer_subject = subject,answer = answer,user_id = user,score = score,grade = grade)


        messages.success(request,"Answers submitted successfully")
        return redirect("user_exam")
    try:

        return render(request,"user/user-questions.html",{'quest1':sub[0],'quest2':sub[1],'quest3':sub[2],'quest4':sub[3],'quest5':sub[4],})
    except:
        messages.error(request,"Something Went Wrong, Check with admin if questions are added and try again.")
        return redirect("user_exam")


def user_view_results(request,answer_id):
    

    TempModel.objects.all().delete()
    result = AnswerModel.objects.get(answer_id = answer_id)
    dict = result.answer
    str_to_dict= ast.literal_eval(dict)
    
    for key ,value in str_to_dict.items():
        TempModel.objects.create(subject = result.answer_subject,question = value['question'],answer = value['answer'],score = value['marks'])
        
    f_results =  TempModel.objects.all()

    return render(request,"user/user-view-results.html",{'result':f_results})







def user_results(request):
    user_id=request.session['user_id']

    result = AnswerModel.objects.filter(user_id = user_id)
    return render(request,"user/user-results.html",{'result':result})

def user_myprofile(request):
    user_id=request.session['user_id']
    user=UserdetailsModel.objects.get(user_id=user_id)

    
    if request.method=="POST":
        if len(request.FILES) ==0:
            name=request.POST.get("name")
            
            email=request.POST.get("email")
            password=request.POST.get("password")
            contact=request.POST.get("contact")
            id = request.POST.get("id")
            
            user.user_name = name
            
            user.user_email = email
            user.user_password = password
            user.user_contact = contact
            user.student_id =  id
            

            user.save()
            if user:
                messages.success(request,"Succesflly Updated")
                return redirect("user_myprofile")

            else:
                messages.error(request,"No changes detected")
                return redirect("user_myprofile")
    else:
        if request.method=="POST" and request.FILES['photo']:
            name=request.POST.get("name")
        
            email=request.POST.get("email")
            password=request.POST.get("password")
            contact=request.POST.get("contact")
            id = request.POST.get("id")
            
            photo=request.FILES["photo"]
            user.user_name = name
            
            user.user_email = email
            user.user_password = password
            user.user_contact = contact
            user.student_id =  id
            user.user_photo = photo
            
            

            user.save()
            if user:
                messages.success(request,"Succesflly Updated")
                return redirect("user_myprofile")
            

                

            else:
                messages.error(request,"No changes detected")
                return redirect("user_myprofile")
    return render(request,"user/user-myprofile.html",{'user':user})

def user_exam(request):
    sub = SubjectModel.objects.all()

    return render(request,"user/user-exam.html",{'sub':sub})