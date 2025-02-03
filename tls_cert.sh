snaps install --classic certbot

# Test
certbot certonly --dry-run --key-type ecdsa --webroot -w /home/httpd/test/htdocs -d test.test.ru 
certbot certonly --dry-run --key-type rsa --webroot -w /home/httpd/test/htdocs -d test.test.ru


certbot certonly --key-type ecdsa --webroot -w /home/httpd/test/htdocs -d test.test.ru
certbot certonly --key-type rsa --webroot -w /home/httpd/test/htdocs -d test.test.ru

# Находим таймер для certbot
systemctl list-timers

#
curl https://get.acme.sh | sh -s email=test@test.ru
sudo su
export SL_Key="1111"
acme.sh --issue --dns dns_selectel --server letsencrypt -d test.ru -d '*.test.ru'
acme.sh --issue --dns dns_selectel --server letsencrypt  -d test.ru -d '*.test.ru' --keylength 2048

acme.sh --install-cert -d test.ru --key-file /etc/angie/ssl/test.key --fullchain-file /etc/angie/ssl/test.pem --reloadcmd "service angie reload"
acme.sh --install-cert --ecc -d test.ru --key-file /etc/angie/ssl/test_ecc.key --fullchain-file /etc/angie/ssl/test_ecc.pem --reloadcmd "service angie reload"


/etc/letsencrypt/live/test.test.ru/fullchain.pem
/etc/letsencrypt/live/test.test.ru/privkey.pem

/etc/angie/ssl/test.key
/etc/angie/ssl/test.pem

/etc/angie/ssl/test_ecc.key
/etc/angie/ssl/test_ecc.pem
