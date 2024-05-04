# **Course:** CS69099- Capstone Project
# **Product Name: AutoCorrect+ (AI-Enhanced Descriptive Answer Evaluation)**

**Proposal Prepared By:**

Bhanu Siva Kumar Komanna - bkomman1@kent.edu - 811252220 

Mani Surya Teja Kota - mkota1@kent.edu - 811262686 

Veeraraghava Raju Lolabhattu - klolabha@kent.edu - 811301662 

Gayathri Devi Atluri - gatluri@kent.edu - 811256395 

Harika Malneedi - hmalneed@kent.edu -811255562 

Sai Haritha Udatha - sudatha@kent.edu – 811238202 


## **Product Description** ##

Evaluating descriptive answers takes a long time and requires a lot of physical effort. It is prone to grader fatigue, partiality, and inconsistency caused by differing standards.  We have developed a solution to address the above mentioned concerns. Our automated grading system uses strong NLP and machine learning algorithms to deliver consistent grades for descriptive responses.

AutoCorrect+ uses a few natural language processing (NLP) packages and techniques to accurately assess descriptive answers. It employs NLTK for breaking text into smaller units (tokenization) and removing commonly used words (stop word removal). In addition to that, it also uses the scikit-learn (sklearn) package to calculate text similarity using methods like cosine similarity and Jaccard distance. By combining these NLP approaches, AutoCorrect+ establishes a solid foundation for evaluating descriptive answers effectively.

Moreover, AutoCorrect+ is integrated with the Django framework, which provides a user-friendly interfaces for both administrators and students. Administrators can login and manage user registrations, analyze exam results, and add or modify courses and questions through the interface. Similarly, students can easily register, log in, attempt exams, view their results, and update their profiles using the provided interface.

The aim of AutoCorrect+ is to enhance traditional manual grading methods by introducing efficiency, accuracy, and scalability to educational assessment systems using  NLP techniques and user-friendly interfaces.



## **Project Code**

https://github.com/gayathrideviatluri/Capstone-Team1/tree/main/answer_evaluation


## Prerequisites

- Python (version 3.6 or higher)
- pip (Python package installer)
- Visual Studio Code (or any other preferred IDE)
- WAMP or XAMPP Server

## Installation

1. **Clone the repository**

   ```
   git clone https://github.com/gayathrideviatluri/Capstone-Team1.git
   ```

2. **Set up the database**

   - Install and start the WAMP or XAMPP server.
   - Create a new database for your project.
   - Update the database settings in `settings.py` with your database credentials.

3. **Apply database migrations**

   ```
   python manage.py migrate
   ```
4. **Create a superuser (for admin access)**

   ```
   python manage.py createsuperuser
   ```

5. **Start the development server**

   ```
   python manage.py runserver
   ```

   The application should now be accessible at `http://localhost:8000/`.

## Usage

- Access the admin panel at `http://localhost:8000/admin` using the superuser credentials created earlier.
- For front-end development, edit the HTML, CSS, and JavaScript files in the `templates/` and `static/` directories.
- For back-end development, modify the Django views and models in the `views.py` and `your_app/models.py` files, respectively.

## Deployment

To deploy the application to a production server, follow the Django deployment guidelines for your preferred hosting platform (e.g., Heroku, AWS, DigitalOcean). The deployment process typically involves:

- Collecting static files
- Setting up a production-ready web server (e.g., Gunicorn, Nginx)
- Configuring the production database
- Applying security best practices

Refer to the Django documentation for detailed deployment instructions: https://docs.djangoproject.com/en/stable/howto/deployment/


