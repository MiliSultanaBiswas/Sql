mysql>  create table my_family(id int primary key,first_name varchar(20),last_name varchar(20),age int,gender varchar(10),Marital_Status varchar(20),phone varchar(10),income_source varchar(20),carrier_status varchar(20));

mysql> desc my_family;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| id             | int         | NO   | PRI | NULL    |       |
| first_name     | varchar(20) | YES  |     | NULL    |       |
| last_name      | varchar(20) | YES  |     | NULL    |       |
| age            | int         | YES  |     | NULL    |       |
| gender         | varchar(10) | YES  |     | NULL    |       |
| Marital_Status | varchar(20) | YES  |     | NULL    |       |
| phone          | varchar(10) | YES  |     | NULL    |       |
| income_source  | varchar(20) | YES  |     | NULL    |       |
| carrier_status | varchar(20) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
9 rows in set (0.02 sec)

mysql>  insert into my_family values(1,'Morshed','Biswas',58,'Male','Married','7550830687','no','warker');


mysql>  insert into my_family values(2,'Asanur','Biswas',42,'female','Married','7550830987','no','housewife');

mysql>  insert into my_family values(3,'Lilufa','Biswas',24,'female','Married','7450830987','no','housewife');

mysql>  insert into my_family values(4,'Mili','Biswas',21,'female','unarried','7950930987','no','student');

mysql>  insert into my_family values(5,'Mojid','Biswas',17,'Male','unarried','7950938887','no','student');

mysql> select * from my_family;
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+
| id | first_name | last_name | age  | gender | Marital_Status | phone      | income_source | carrier_status |
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+
|  1 | Morshed    | Biswas    |   58 | Male   | Married        | 7550830687 | no            | warker         |
|  2 | Asanur     | Biswas    |   42 | female | Married        | 7550830987 | no            | housewife      |
|  3 | Lilufa     | Biswas    |   24 | female | Married        | 7450830987 | no            | housewife      |
|  4 | Mili       | Biswas    |   21 | female | unarried       | 7950930987 | no            | student        |
|  5 | Mojid      | Biswas    |   17 | Male   | unarried       | 7950938887 | no            | student        |
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> update my_family set last_name='chowdhury' where Marital_Status='Married'and id=3;

mysql> select * from my_family;
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+
| id | first_name | last_name | age  | gender | Marital_Status | phone      | income_source | carrier_status |
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+
|  1 | Morshed    | Biswas    |   58 | Male   | Married        | 7550830687 | no            | warker         |
|  2 | Asanur     | Biswas    |   42 | female | Married        | 7550830987 | no            | housewife      |
|  3 | Lilufa     | chowdhury |   24 | female | Married        | 7450830987 | no            | housewife      |
|  4 | Mili       | Biswas    |   21 | female | unarried       | 7950930987 | no            | student        |
|  5 | Mojid      | Biswas    |   17 | Male   | unarried       | 7950938887 | no            | student        |
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> alter table my_family add pension_holder varchar(32);

mysql> select * from my_family;
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+----------------+
| id | first_name | last_name | age  | gender | Marital_Status | phone      | income_source | carrier_status | pension_holder |
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+----------------+
|  1 | Morshed    | Biswas    |   58 | Male   | Married        | 7550830687 | no            | warker         | NULL           |
|  2 | Asanur     | Biswas    |   42 | female | Married        | 7550830987 | no            | housewife      | NULL           |
|  3 | Lilufa     | chowdhury |   24 | female | Married        | 7450830987 | no            | housewife      | NULL           |
|  4 | Mili       | Biswas    |   21 | female | unarried       | 7950930987 | no            | student        | NULL           |
|  5 | Mojid      | Biswas    |   17 | Male   | unarried       | 7950938887 | no            | student        | NULL           |
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> update my_family set pension_holder='no';

mysql> select * from my_family;
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+----------------+
| id | first_name | last_name | age  | gender | Marital_Status | phone      | income_source | carrier_status | pension_holder |
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+----------------+
|  1 | Morshed    | Biswas    |   58 | Male   | Married        | 7550830687 | no            | warker         | no             |
|  2 | Asanur     | Biswas    |   42 | female | Married        | 7550830987 | no            | housewife      | no             |
|  3 | Lilufa     | chowdhury |   24 | female | Married        | 7450830987 | no            | housewife      | no             |
|  4 | Mili       | Biswas    |   21 | female | unarried       | 7950930987 | no            | student        | no             |
|  5 | Mojid      | Biswas    |   17 | Male   | unarried       | 7950938887 | no            | student        | no             |
+----+------------+-----------+------+--------+----------------+------------+---------------+----------------+----------------+

mysql> delete from my_family where Carrier_Status='retired';

mysql> update my_family set income_source='farmer' where id=1;

mysql> update my_family set income_source='Lakshmivandarr' where id=2;

mysql> update my_family set income_source='student' where id=4;

mysql> update my_family set income_source='student' where id=5;

mysql> select * from my_family;
+----+------------+-----------+------+--------+----------------+------------+----------------+----------------+----------------+
| id | first_name | last_name | age  | gender | Marital_Status | phone      | income_source  | carrier_status | pension_holder |
+----+------------+-----------+------+--------+----------------+------------+----------------+----------------+----------------+
|  1 | Morshed    | Biswas    |   58 | Male   | Married        | 7550830687 | farmer         | warker         | no             |
|  2 | Asanur     | Biswas    |   42 | female | Married        | 7550830987 | Lakshmivandarr | housewife      | no             |
|  3 | Lilufa     | chowdhury |   24 | female | Married        | 7450830987 | no             | housewife      | no             |
|  4 | Mili       | Biswas    |   21 | female | unarried       | 7950930987 | student        | student        | no             |
|  5 | Mojid      | Biswas    |   17 | Male   | unarried       | 7950938887 | student        | student        | no             |
+----+------------+-----------+------+--------+----------------+------------+----------------+----------------+----------------+
5 rows in set (0.00 sec)


