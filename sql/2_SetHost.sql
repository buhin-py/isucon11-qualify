GRANT ALL PRIVILEGES ON *.* TO isucon@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;

use mysql;
update user set password='' where user='isucon';

ALTER TABLE isucondition.isu_condition ADD INDEX index_uuid(jia_isu_uuid);
