yum install nginx -y

systemctl enable nginx
systemctl start nginx

curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

cd /usr/share/nginx/html
unzip /tmp/frontend.zip

systemctl restart nginx

