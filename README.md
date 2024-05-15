# djangopolls
django example code plus own thoughts and findings 

<h2>Prerequisitions</h2>

1. Python3.12 installed
1. Postgres installed
1. create venv with pip install django, psycopg2

<h2>The steps to get the app running in a Linux machine:</h2>

In this project dir, do the following:

-- Clone the project code to local machine. The project dir will be 'djangopolls'

1. git clone git@github.com:Joylizzie/djangopolls.git
-- In this dir teminal, create db, user, schema 
1. bash database/create_db_local.sh
1. change password for in .pgpass so that no sensetive info is exposed in pulic area.
1. python manage.py migrate
# populate data - for Question
1. bash populate_data.sh 
1. python manage.py makemigrations
# using Django function to input data for Choices
1. run below code block in terminal
```py
python manage.py shell
   from polls.models import Choice, Question
    qlst = Question.objects.all()
    clst = ['Yes', 'No', 'Not sure']
    for q in qlst:
        for c in clst:
            q.choice_set.create(choice_text=c, votes=0)
```
1. python manage.pu runserver
1. 