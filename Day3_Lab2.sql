
--creating a new database.
mysql> create database databaseschema;
Query OK, 1 row affected (0.14 sec)

--showing that newly created database is created or not..
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
8 rows in set (0.00 sec)
--chenging the database enviornment.
mysql> use databaseschema;
Database changed


--creating a table name as employee with some column.
mysql> create table employee(EmployeeID varchar(20) primary key,FirstName varchar(20) not null,LastName varchar(20) not null,age int,email varchar(50) not null);
Query OK, 0 rows affected (0.86 sec)


--describing the employee table.
mysql> desc employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| EmployeeID | varchar(20) | NO   | PRI | NULL    |       |
| FirstName  | varchar(20) | NO   |     | NULL    |       |
| LastName   | varchar(20) | NO   |     | NULL    |       |
| age        | int         | YES  |     | NULL    |       |
| email      | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

--inserting the record into the employee table.

--row 1
mysql>  insert into employee values('E101','Mili','Biswas',21,'milisultanabiswas@gmail.com');
Query OK, 1 row affected (0.08 sec)

--row 2
mysql>  insert into employee values('E102','Mita','Biswas',21,'mitabiswas@gmail.com');
Query OK, 1 row affected (0.08 sec)

--row 3
mysql>  insert into employee values('E103','Lilufa','Chowdhury',24,'lilufachowdhury@gmail.com');
Query OK, 1 row affected (0.08 sec)

--row 4
mysql>  insert into employee values('E104','Masuma','Chowdhury',35,'masumachowdhury@gmail.com');
Query OK, 1 row affected (0.09 sec)

--row 5
mysql>  insert into employee values('E105','Lili','Khatun',44,'lilikhatun@gmail.com');
Query OK, 1 row affected (0.12 sec)

--row 6
mysql>  insert into employee values('E106','Shimran','Chowdhury',45,'shimranchowdhury@gmail.com');
Query OK, 1 row affected (0.11 sec)

-- Here showing the table with the vaues.
mysql> select * from employee;
+------------+-----------+-----------+------+-----------------------------+
| EmployeeID | FirstName | LastName  | age  | email                       |
+------------+-----------+-----------+------+-----------------------------+
| E101       | Mili      | Biswas    |   21 | milisultanabiswas@gmail.com |
| E102       | Mita      | Biswas    |   21 | mitabiswas@gmail.com        |
| E103       | Lilufa    | Chowdhury |   24 | lilufachowdhury@gmail.com   |
| E104       | Masuma    | Chowdhury |   35 | masumachowdhury@gmail.com   |
| E105       | Lili      | Khatun    |   44 | lilikhatun@gmail.com        |
| E106       | Shimran   | Chowdhury |   45 | shimranchowdhury@gmail.com  |
+------------+-----------+-----------+------+-----------------------------+
6 rows in set (0.00 sec)

--quary for retrive the firstname and lastname of all employees from the employee table. 
mysql> select Firstname,Lastname from employee;
+-----------+-----------+
| Firstname | Lastname  |
+-----------+-----------+
| Mili      | Biswas    |
| Mita      | Biswas    |
| Lilufa    | Chowdhury |
| Masuma    | Chowdhury |
| Lili      | Khatun    |
| Shimran   | Chowdhury |
+-----------+-----------+
6 rows in set (0.00 sec)

--quary for retrive the firstname , lastname and age of employees from the employee table who are older than 30 years. 
mysql> select Firstname,Lastname,Age from employee where age>=30;
+-----------+-----------+------+
| Firstname | Lastname  | Age  |
+-----------+-----------+------+
| Masuma    | Chowdhury |   35 |
| Lili      | Khatun    |   44 |
| Shimran   | Chowdhury |   45 |
+-----------+-----------+------+
3 rows in set (0.03 sec)

--quary for increase the age of employee by 1 years for all employees older than 25.
mysql> update employee set age=age+1 where age>25;
Query OK, 3 rows affected (0.10 sec)
Rows matched: 3  Changed: 3  Warnings: 0

-- here is the updated result.
mysql> select * from employee;
+------------+-----------+-----------+------+-----------------------------+
| EmployeeID | FirstName | LastName  | age  | email                       |
+------------+-----------+-----------+------+-----------------------------+
| E101       | Mili      | Biswas    |   21 | milisultanabiswas@gmail.com |
| E102       | Mita      | Biswas    |   21 | mitabiswas@gmail.com        |
| E103       | Lilufa    | Chowdhury |   24 | lilufachowdhury@gmail.com   |
| E104       | Masuma    | Chowdhury |   36 | masumachowdhury@gmail.com   |
| E105       | Lili      | Khatun    |   45 | lilikhatun@gmail.com        |
| E106       | Shimran   | Chowdhury |   46 | shimranchowdhury@gmail.com  |
+------------+-----------+-----------+------+-----------------------------+
6 rows in set (0.00 sec)
