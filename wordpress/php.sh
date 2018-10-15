#!/bin/bash -ex
sed -i 's/max_execution_time = 30/max_execution_time = 300/' /etc/php.ini
sed -i 's/max_input_time = 60/max_input_time = 300/' /etc/php.ini
sed -i 's/; max_input_vars = 1000/max_input_vars = 10000/' /etc/php.ini
sed -i 's/memory_limit = 128M/memory_limit = 512M/' /etc/php.ini
sed -i 's/post_max_size = 8M/post_max_size = 200M/' /etc/php.ini
sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 200M/' /etc/php.ini
sed -i 's/max_file_uploads = 20/max_file_uploads = 200/' /etc/php.ini
sed -i 's/opcache.memory_consumption=128/opcache.memory_consumption=256/g' /etc/php.d/10-opcache.ini
sed -i 's/opcache.interned_strings_buffer=8/opcache.interned_strings_buffer=16/g' /etc/php.d/10-opcache.ini
sed -i 's/opcache.max_accelerated_files=4000/opcache.max_accelerated_files=10000/g' /etc/php.d/10-opcache.ini
sed -i 's/;opcache.max_wasted_percentage=5/opcache.max_wasted_percentage=10/g' /etc/php.d/10-opcache.ini
sed -i 's/;opcache.validate_timestamps=1/opcache.validate_timestamps=1/g' /etc/php.d/10-opcache.ini
sed -i 's/;opcache.revalidate_freq=2/opcache.revalidate_freq=60/g' /etc/php.d/10-opcache.ini
sed -i 's/;opcache.fast_shutdown=0/opcache.fast_shutdown=0/g' /etc/php.d/10-opcache.ini