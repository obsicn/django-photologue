

# 安装Nginx

```shell
$ sudo yum install nginx


修改/etc/nginx/nginx.conf
```shell
        location /static/ {
            alias /home/demo/django-photologue/example_project/public/static/;
        }

        location /media/ {
            alias /home/demo/django-photologue/example_project/public/media/;
        }

增加目录访问权限
确保从根目录开始的所有目录具有执行权限，而所有文件具有读写文件。
chmod -R +r public/


执行migrate
OperationalError at /photologue/gallery/

no such table: photologue_gallery

Request Method: 	GET
Request URL: 	http://120.92.118.39/photologue/gallery/
Django Version: 	1.11.6
Exception Type: 	OperationalError
Exception Value: 	

no such table: photologue_gallery

Exception Location: 	/home/demo/.virtualenvs/djangodev/lib64/python3.4/site-packages/django/db/backends/sqlite3/base.py in execute, line 328
Python Executable: 	/home/demo/.virtualenvs/djangodev/bin/python3
Python Version: 	3.4.5
Python Path: 	

['/home/demo/django-photologue/example_project',
 '/home/demo/.virtualenvs/djangodev/bin',



python manage.py runserver
python manage.py collectstatic
python manage.py migrate
python manage.py createsuperuser



拷贝media文件到特定的KS3 bucket.

修改media