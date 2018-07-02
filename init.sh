sudo apt update
sudo apt install tree

mkdir -p public/img public/css public/js uploads etc
tree ..
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/web.conf
sudo rm /etc/nginx/sites-enabled/default

gunicorn --bind 0.0.0.0:8080 hello:app &
sudo service nginx restart

sudo tail -f /var/log/nginx/access.log &
sudo tail -f /var/log/nginx/error.log &
echo 'Нажмите "Отправить"'
