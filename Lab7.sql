					--Lab 1

-- It is the last modified table in our last lab.
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                 | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| S101      | Mili      | Biswas   | 2002-09-29  | Female | mili_biswas@gmail.com | 8101324631 |
| S102      | Mita      | Biswas   | 2003-01-11  | Female | mitabiswas@gmail.com  | 9641763731 |
| S103      | Tania     | Khatun   | 2002-02-21  | Female | taniakhatun@gmail.com | 9547170200 |
| S104      | Monia     | Khatun   | 2002-08-01  | Female | mniakhatun@gmail.com  | 9547878430 |
| S105      | Ashik     | Mondal   | 2002-10-12  | Male   | ashikmondal@gmail.com | 9576890745 |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
5 rows in set (0.00 sec)

--inserting 2 rows for retriving the record as per the condition.
--row 1
mysql> insert into Student(StudentID,FirstName,LastName,DateOfBirth,Gender,Email,Phone) values('S106','Aduri','Khatun','2009-09-02','Female','adurikhatun@gmail.com',6541324631);

--row 2
mysql>  insert into Student(StudentID,FirstName,LastName,DateOfBirth,Gender,Email,Phone) values('S107','Lina','Das','2011-01-02','Female','linadas@example.com',6541888631);

--After inserting the data modified table is given bellow.
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                 | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| S101      | Mili      | Biswas   | 2002-09-29  | Female | mili_biswas@gmail.com | 8101324631 |
| S102      | Mita      | Biswas   | 2003-01-11  | Female | mitabiswas@gmail.com  | 9641763731 |
| S103      | Tania     | Khatun   | 2002-02-21  | Female | taniakhatun@gmail.com | 9547170200 |
| S104      | Monia     | Khatun   | 2002-08-01  | Female | mniakhatun@gmail.com  | 9547878430 |
| S105      | Ashik     | Mondal   | 2002-10-12  | Male   | ashikmondal@gmail.com | 9576890745 |
| S106      | Aduri     | Khatun   | 2009-09-02  | Female | adurikhatun@gmail.com | 6541324631 |
| S107      | Lina      | Das      | 2011-01-02  | Female | linadas@example.com   | 6541888631 |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
7 rows in set (0.00 sec)

--Retriving the record who born after June 16,2009.
mysql> select * from student where DateOfBirth > '2009-06-16';
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                 | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| S106      | Aduri     | Khatun   | 2009-09-02  | Female | adurikhatun@gmail.com | 6541324631 |
| S107      | Lina      | Das      | 2011-01-02  | Female | linadas@example.com   | 6541888631 |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
2 rows in set (0.06 sec)

--Retriving the record whose first name start with 'A' or 'J'.
mysql> select * from student where FirstName like 'A%' or 'j%';
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                 | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| S105      | Ashik     | Mondal   | 2002-10-12  | Male   | ashikmondal@gmail.com | 9576890745 |
| S106      | Aduri     | Khatun   | 2009-09-02  | Female | adurikhatun@gmail.com | 6541324631 |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
2 rows in set, 1 warning (0.07 sec)

--Retriving the record whose first name is not 'Alice' and whose email contain the domain '@example.com'.
mysql> select * from student where FirstName not in ('Alice') and Email like '%@example.com';
+-----------+-----------+----------+-------------+--------+---------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email               | Phone      |
+-----------+-----------+----------+-------------+--------+---------------------+------------+
| S107      | Lina      | Das      | 2011-01-02  | Female | linadas@example.com | 6541888631 |
+-----------+-----------+----------+-------------+--------+---------------------+------------+
1 row in set (0.00 sec)


								--Lab 2
--Creating the first table name as Person.
mysql> create table Person(Person_ID int primary key, First_Name varchar(255),Last_Name varchar(255), age int);
Query OK, 0 rows affected (0.58 sec)

--describing the person table.
mysql> desc Person;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| Person_ID  | int          | NO   | PRI | NULL    |       |
| First_Name | varchar(255) | YES  |     | NULL    |       |
| Last_Name  | varchar(255) | YES  |     | NULL    |       |
| age        | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

--inserting the values in person table.
--row 1
mysql> insert into Person values(1,'Mili','Biswas',21);
Query OK, 1 row affected (0.12 sec)

--row 2
mysql> insert into Person values(2,'Arpita','Kundu',25);
Query OK, 1 row affected (0.09 sec)

--row 3
mysql> insert into Person values(3,'Rupsha','Banik',23);
Query OK, 1 row affected (0.12 sec)

--row 4
mysql> insert into Person values(4,'Dipanwita','Das',33);
Query OK, 1 row affected (0.41 sec)

--row 5
mysql> insert into Person values(5,'Salman','Malita',23);
Query OK, 1 row affected (0.07 sec)

--Retriving all the records of person table.
mysql> select * from Person;
+-----------+------------+-----------+------+
| Person_ID | First_Name | Last_Name | age  |
+-----------+------------+-----------+------+
|         1 | Mili       | Biswas    |   21 |
|         2 | Arpita     | Kundu     |   25 |
|         3 | Rupsha     | Banik     |   23 |
|         4 | Dipanwita  | Das       |   33 |
|         5 | Salman     | Malita    |   23 |
+-----------+------------+-----------+------+
5 rows in set (0.00 sec)

--Creating the second table name as emp.
mysql> create table Emp(Emp_ID int primary key, First_Name varchar(255),Last_Name varchar(255), age int);
Query OK, 0 rows affected (0.67 sec)

--describing the emp table.
mysql> desc emp;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| Emp_ID     | int          | NO   | PRI | NULL    |       |
| First_Name | varchar(255) | YES  |     | NULL    |       |
| Last_Name  | varchar(255) | YES  |     | NULL    |       |
| age        | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

--inserting the values in the emp table.
--row 1
mysql> insert into emp values(1,'Ritika','Majumdar',23);
Query OK, 1 row affected (0.07 sec)

--row 2
mysql> insert into emp values(2,'Rikta','Sk',16);
Query OK, 1 row affected (0.07 sec)

--row 3
mysql> insert into emp values(3,'Rimi','Sk',18);
Query OK, 1 row affected (0.06 sec)

--row 4
mysql> insert into emp values(4,'Mahi','Chowdhury',8);
Query OK, 1 row affected (0.09 sec)

--row 5
mysql> insert into emp values(5,'Priya','Sk',18);
Query OK, 1 row affected (0.05 sec)

--Retriving all the records of emp table.
mysql> select * from emp;
+--------+------------+-----------+------+
| Emp_ID | First_Name | Last_Name | age  |
+--------+------------+-----------+------+
|      1 | Ritika     | Majumdar  |   23 |
|      2 | Rikta      | Sk        |   16 |
|      3 | Rimi       | Sk        |   18 |
|      4 | Mahi       | Chowdhury |    8 |
|      5 | Priya      | Sk        |   18 |
+--------+------------+-----------+------+
5 rows in set (0.00 sec)
 -- joining two table by using the inner join.
mysql> select person.*,emp.* from Person inner join emp on person.Person_ID=emp.Emp_ID;
+-----------+------------+-----------+------+--------+------------+-----------+------+
| Person_ID | First_Name | Last_Name | age  | Emp_ID | First_Name | Last_Name | age  |
+-----------+------------+-----------+------+--------+------------+-----------+------+
|         1 | Mili       | Biswas    |   21 |      1 | Ritika     | Majumdar  |   23 |
|         2 | Arpita     | Kundu     |   25 |      2 | Rikta      | Sk        |   16 |
|         3 | Rupsha     | Banik     |   23 |      3 | Rimi       | Sk        |   18 |
|         4 | Dipanwita  | Das       |   33 |      4 | Mahi       | Chowdhury |    8 |
|         5 | Salman     | Malita    |   23 |      5 | Priya      | Sk        |   18 |
+-----------+------------+-----------+------+--------+------------+-----------+------+
5 rows in set (0.03 sec)






















