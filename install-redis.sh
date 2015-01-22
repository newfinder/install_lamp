#/bin/bash

tar xzvf ./src/redis-2.8.17.tar.gz
cd redis-2.8.17
make PREFIX=/home/work/env/redis install
cd ..

#mkdir
mkdir -p /home/work/env/redis/conf
mkdir -p /home/work/log/redis

#copy the conf
cp ./conf/redis.conf /home/work/env/php/etc/php.ini
