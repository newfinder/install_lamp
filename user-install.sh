#------------------work user----------------#

#mkdir
mkdir -p /home/work/env
mkdir -p /home/work/webfoot
mkdir -p /home/work/logs/nginx
mkdir -p /home/work/logs/php

#install vim
git clone https://github.com/gmarik/Vundle.vim.git /home/work/.vim/bundle/Vundle.vim
cp ./vim/vimrc /home/work/.vimrc

#install nginx
sh install-nginx.sh

#install php
sh install-php.sh

#install GD
tar xzvf ./src/libgd-2.1.0.tar.gz
cd libgd-2.1.0
./configure --prefix=/home/work/env/gd --with-png --with-freetype --with-jpeg
make && make install
cd ..

#install yaf
git clone https://github.com/laruence/php-yaf.git
cd php-yaf
/home/work/env/php/bin/phpize
./configure --with-php-config=/home/work/env/php/bin/php-config
make && make install
echo "[yaf]" >> /home/work/env/php/etc/php.ini
echo "extension=yaf.so" >> /home/work/env/php/etc/php.ini
echo >> /home/work/env/php/etc/php.ini
cd ..

#install phpredis
git clone https://github.com/nicolasff/phpredis.git
cd phpredis
/home/work/env/php/bin/phpize
./configure --with-php-config=/home/work/env/php/bin/php-config
make && make install
echo "[phpredis]" >> /home/work/env/php/etc/php.ini
echo "extension=redis.so" >> /home/work/env/php/etc/php.ini
echo >> /home/work/env/php/etc/php.ini
cd ..

#install ImageMagick
tar xzvf ./src/ImageMagick.tar.gz
cd ImageMagick-6.8.9-10
./configure --prefix=/home/work/env/imagemagick
make && make install
cd ..

#install imagick
tar xzvf ./src/imagick-3.1.2.tgz
cd imagick-3.1.2
/home/work/env/php/bin/phpize
./configure --with-php-config=/home/work/env/php/bin/php-config --with-imagick=/home/work/env/imagemagick
make && make install
echo "[imagick]" >> /home/work/env/php/etc/php.ini
echo "extension=imagick.so" >> /home/work/env/php/etc/php.ini
echo >> /home/work/env/php/etc/php.ini
cd ..


#rm temp files
rm -rf nginx-1.7.7 php-5.6.2 php-yaf imagick-3.1.2 ImageMagick-6.8.9-10
rm package.xml
