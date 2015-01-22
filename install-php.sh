#/bin/bash

tar xzvf ./src/php-5.6.2.tar.gz
cd php-5.6.2
./configure --prefix=/home/work/env/php --with-fpm-user=work --with-fpm-group=work --with-jpeg-dir --with-png-dir --with-zlib --with-gettext --with-iconv --enable-mbstring --with-xmlrpc --enable-sockets --enable-ftp --enable-shmop --enable-exif --with-config-file-path=/home/work/env/php/etc --enable-xml --with-curl --enable-fpm --enable-bcmath --with-openssl --with-libxml-dir --with-mysql --with-mysqli --with-mcrypt --with-gd --with-freetype
make
make install
cd ..

#copy the conf
cp ./conf/php.ini /home/work/env/php/etc/php.ini
cp ./conf/php-fpm.conf /home/work/env/php/etc/php-fpm.conf
cp ./conf/run.sh /home/work/env/php/etc/run.sh
