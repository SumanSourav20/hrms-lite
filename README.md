Tech stack: postgres, django, react(nextjs)

To Run Locally or deploy on server , use a LINUX (Debian based machine eg Ubuntu 24 )

Set up docker locally , then from the root directory of the project do:

docker compose up --build 

** also don't forget to add the enviroment variables mentioned bellow 

or to test localy (development mode) clone this repo and install "uv" and "node" and "postgres" 

after installing postgres change the postgres user password or create user , create a database (hrms_lite named here)
use all the config and create a .env in backend directory(hrmslite)

DJANGO_SECRET_KEY = 'django-insecure-o1ekmwwfgbj-4p$20d+b^t%blzhm#_coxb2ekq1#ylh(ite)g=' (example you can generate your own)
POSTGRES_USER = 'postgres' (or your created user)
POSTGRES_PASSWORD =  your_user_password
POSTGRES_DB = 'hrms_lite' (you can name it as you want)
POSTGRES_HOST = localhost 
POSTGRES_PORT = '5432'
POSTGRES_READY = 1

uv sync (in rood directory)

cd hrmslite 

uv run python manage.py runserver

create a .env in frontend folder
add this 

NEXT_PUBLIC_API_BASE_URL = 'http://localhost:8000' (change if you changed the port in runserver)

cd frontend (from root directory)

npm i

npm run dev 

