default['polidog']['nginx-wp']['host'] = 'localhost'
default['polidog']['nginx-wp']['name'] = 'localhost'
default['polidog']['nginx-wp']['root'] = '/var/nginx/localhost'
default['polidog']['nginx-wp']['code'] = nil

default['polidog']['nginx-wp']['fastcgi_read_timeout'] = '3600s'
default['polidog']['nginx-wp']['static_file_expiry'] = '24h'
default['polidog']['nginx-wp']['php_fpm_listen'] = '/var/run/php-fpm-www.sock'
