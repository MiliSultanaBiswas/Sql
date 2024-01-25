--how many databases show the databases..
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| databaseschema          |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.15 sec)

--use database enviornment..
mysql> use databaseschema;
Database changed

--creating a table name as product..
mysql> create table product(PdoductId varchar(10) primary key,ProductName varchar(30),Catagory varchar(20),Price int);
Query OK, 0 rows affected (1.71 sec)

--showing the description of the newly created product table.
mysql> desc product;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| PdoductId   | varchar(10) | NO   | PRI | NULL    |       |
| ProductName | varchar(30) | YES  |     | NULL    |       |
| Catagory    | varchar(20) | YES  |     | NULL    |       |
| Price       | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

--inserting the values in the product table.
--row 1
mysql> insert into product values('P101','HPlaptop','Electronic',60000);
Query OK, 1 row affected (0.05 sec)

--row 2
mysql> insert into product values('P102','DellLaptop','Electronic',80000);
Query OK, 1 row affected (0.12 sec)

--row 3
mysql> insert into product values('P103','Yamaha','Bike',168000);
Query OK, 1 row affected (0.08 sec)

--row 4
mysql> insert into product values('P104','Lamborgini','Car',600000);
Query OK, 1 row affected (0.13 sec)

--row 5
mysql> insert into product values('P105','Samsung','Phone',15000);
Query OK, 1 row affected (0.05 sec)

--row 6
mysql> insert into product values('P106','Desktop','Electronic',1000000);
Query OK, 1 row affected (0.13 sec)

-- Here showing all the values of the product table.
mysql> select * from product;
+-----------+-------------+------------+---------+
| PdoductId | ProductName | Catagory   | Price   |
+-----------+-------------+------------+---------+
| P101      | HPlaptop    | Electronic |   60000 |
| P102      | DellLaptop  | Electronic |   80000 |
| P103      | Yamaha      | Bike       |  168000 |
| P104      | Lamborgini  | Car        |  600000 |
| P105      | Samsung     | Phone      |   15000 |
| P106      | Desktop     | Electronic | 1000000 |
+-----------+-------------+------------+---------+
6 rows in set (0.00 sec)

--retrive the data from the product table where catagory is Electroni or price is grater than 70000. 
mysql> select * from product where catagory='Electronic' or price>70000;
+-----------+-------------+------------+---------+
| PdoductId | ProductName | Catagory   | Price   |
+-----------+-------------+------------+---------+
| P101      | HPlaptop    | Electronic |   60000 |
| P102      | DellLaptop  | Electronic |   80000 |
| P103      | Yamaha      | Bike       |  168000 |
| P104      | Lamborgini  | Car        |  600000 |
| P106      | Desktop     | Electronic | 1000000 |
+-----------+-------------+------------+---------+
5 rows in set (0.00 sec)

--retrive the data from the product table where catagory is Electroni .
mysql> select * from product where catagory='Electronic' ;
+-----------+-------------+------------+---------+
| PdoductId | ProductName | Catagory   | Price   |
+-----------+-------------+------------+---------+
| P101      | HPlaptop    | Electronic |   60000 |
| P102      | DellLaptop  | Electronic |   80000 |
| P106      | Desktop     | Electronic | 1000000 |
+-----------+-------------+------------+---------+
3 rows in set (0.00 sec)

--retrive the data from the product table where  price is grater than 70000. 

mysql> select * from product where price>70000;
+-----------+-------------+------------+---------+
| PdoductId | ProductName | Catagory   | Price   |
+-----------+-------------+------------+---------+
| P102      | DellLaptop  | Electronic |   80000 |
| P103      | Yamaha      | Bike       |  168000 |
| P104      | Lamborgini  | Car        |  600000 |
| P106      | Desktop     | Electronic | 1000000 |
+-----------+-------------+------------+---------+
4 rows in set (0.00 sec)











































