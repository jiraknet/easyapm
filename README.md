# easyapm

## readme



### 20151013

1. change compile option
file : install_php5.4

--enable-mysqlnd \
--with-mysql=mysqlnd \
--with-mysqli=mysqlnd \
--with-pdo-mysql=mysqlnd \

now using mysqlnd.


2. change php.ini
file : php.ini-dist-Ver5.4

remove
extension=mysqli.so

