mkdir -p public/img public/css public/js uploads etc
tree
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/web.conf
sudo rm /etc/nginx/sites-enabled/default
sudo service nginx restart
