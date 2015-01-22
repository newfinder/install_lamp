#/bin/bash

tar xzvf ./src/nginx-1.7.7.tar.gz
cd nginx-1.7.7
./configure --prefix=/home/work/env/nginx --conf-path=/home/work/env/nginx/conf/nginx.conf --http-log-path=/home/work/log/nginx/access.log --error-log-path=/home/work/log/nginx/error.log --lock-path=/home/work/env/nginx/var/nginx.lock --pid-path=/home/work/env/nginx/run/nginx.pid --with-pcre-jit --with-ipv6 --with-http_ssl_module --with-http_stub_status_module --with-http_realip_module --with-http_addition_module --with-http_dav_module --with-http_geoip_module --with-http_gzip_static_module --with-http_image_filter_module --with-http_spdy_module --with-http_sub_module --with-http_xslt_module --with-mail --with-mail_ssl_module
make
make install
mkdir /home/work/env/nginx/logs
cd ..
cp ./conf/nginx.conf /home/work/env/nginx/conf/nginx.conf
