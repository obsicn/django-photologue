 gunicorn --bind 0.0.0.0:8000 example_project.wsgi:application


gunicorn --workers 3 --bind unix:/home/demo/django-photologue/example_project/example_project.sock example_project.wsgi:application