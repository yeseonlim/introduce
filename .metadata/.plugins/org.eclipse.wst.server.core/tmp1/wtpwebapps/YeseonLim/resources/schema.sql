

-- 2022.12.09 계획 및 기본구성시작, ppt참고!
create table guestbook(
    -> gno int not null auto_increment,
    -> writer varchar(100) not null,
    -> content text,
    -> reg_date datetime default current_timestamp,
    -> primary key(gno));
+----------+--------------+------+-----+-------------------+-------------------+
| Field    | Type         | Null | Key | Default           | Extra             |
+----------+--------------+------+-----+-------------------+-------------------+
| gno      | int          | NO   | PRI | NULL              | auto_increment    |
| writer   | varchar(100) | NO   |     | NULL              |                   |
| content  | text         | YES  |     | NULL              |                   |
| reg_date | datetime     | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+----------+--------------+------+-----+-------------------+-------------------+

-- GuestBookVO생성

-- resources 안에 img폴더
