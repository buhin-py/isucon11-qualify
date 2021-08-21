GRANT ALL PRIVILEGES ON *.* TO isucon@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;

use mysql;
update user set password='' where user='isucon';
