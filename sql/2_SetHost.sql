GRANT ALL PRIVILEGES ON *.* TO isucon@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;

use mysql;
update user set password='' where user='isucon';

ALTER TABLE isucondition.isu_condition ADD INDEX index_uuid(jia_isu_uuid);

ALTER TABLE isucondition.isu ADD INDEX index_user1(jia_user_id);

ALTER TABLE isucondition.isu ADD isu_user_id varchar(400) NOT NULL;
ALTER TABLE isucondition.isu ADD INDEX index_isu_user(isu_user_id);
UPDATE isucondition.isu SET isu_user_id=CONCAT(jia_isu_uuid, jia_user_id);
