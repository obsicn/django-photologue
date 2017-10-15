

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

