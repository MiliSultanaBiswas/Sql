Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.35 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.37 sec)

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
7 rows in set (0.00 sec)

mysql> create table Student(StudentID varchar(10) primary key,FirstName varchar(20) not null,LastName varchar(20) not null,DateOfBirth date not null,Gender varchar(10) not null,Email varchar(50) not null,Phone int(15) not null);

ERROR 1046 (3D000): No database selected
mysql> use StudentManagementSystem;
Database changed
mysql> create table Student(StudentID varchar(10) primary key,FirstName varchar(20) not null,LastName varchar(20) not null,DateOfBirth date not null,Gender varchar(10) not null,Email varchar(50) not null,Phone int(15) not null);

Query OK, 0 rows affected, 1 warning (0.78 sec)

mysql> desc Student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| StudentID   | varchar(10) | NO   | PRI | NULL    |       |
| FirstName   | varchar(20) | NO   |     | NULL    |       |
| LastName    | varchar(20) | NO   |     | NULL    |       |
| DateOfBirth | date        | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(50) | NO   |     | NULL    |       |
| Phone       | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> create table Course(CourseID varchar(20) primary key,CoueseTitle varchar(40) not null,Cradits varchar(30) not null);
Query OK, 0 rows affected (0.57 sec)

mysql> desc Course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| CourseID    | varchar(20) | NO   | PRI | NULL    |       |
| CoueseTitle | varchar(40) | NO   |     | NULL    |       |
| Cradits     | varchar(30) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table Instructor(InstructorID varchar(20) primary key,FirstName varchar(40) not null,LastName varchar(30) not null,Email varchar(50) not null);
Query OK, 0 rows affected (1.09 sec)

mysql> desc Instructor;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| InstructorID | varchar(20) | NO   | PRI | NULL    |       |
| FirstName    | varchar(40) | NO   |     | NULL    |       |
| LastName     | varchar(30) | NO   |     | NULL    |       |
| Email        | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table Enrollment(EnrollmentID varchar(20) primary key,EnrollmentDate date not null,StudentID varchar(10) not null,CourseID varchar(20) not null,InstructorID varchar(20) not null);
Query OK, 0 rows affected (0.44 sec)

mysql> desc Enrollment;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| EnrollmentID   | varchar(20) | NO   | PRI | NULL    |       |
| EnrollmentDate | date        | NO   |     | NULL    |       |
| StudentID      | varchar(10) | NO   |     | NULL    |       |
| CourseID       | varchar(20) | NO   |     | NULL    |       |
| InstructorID   | varchar(20) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Enrollment add foreign key(StudentID) references Student(StudentID);
Query OK, 0 rows affected (1.52 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Enrollment;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| EnrollmentID   | varchar(20) | NO   | PRI | NULL    |       |
| EnrollmentDate | date        | NO   |     | NULL    |       |
| StudentID      | varchar(10) | NO   | MUL | NULL    |       |
| CourseID       | varchar(20) | NO   |     | NULL    |       |
| InstructorID   | varchar(20) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Enrollment add foreign key(CourseID) references Course(CourseID);
Query OK, 0 rows affected (1.50 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Enrollment;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| EnrollmentID   | varchar(20) | NO   | PRI | NULL    |       |
| EnrollmentDate | date        | NO   |     | NULL    |       |
| StudentID      | varchar(10) | NO   | MUL | NULL    |       |
| CourseID       | varchar(20) | NO   | MUL | NULL    |       |
| InstructorID   | varchar(20) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Enrollment add foreign key(InstructorID) references Instructor(InstructorID);
Query OK, 0 rows affected (1.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Enrollment;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| EnrollmentID   | varchar(20) | NO   | PRI | NULL    |       |
| EnrollmentDate | date        | NO   |     | NULL    |       |
| StudentID      | varchar(10) | NO   | MUL | NULL    |       |
| CourseID       | varchar(20) | NO   | MUL | NULL    |       |
| InstructorID   | varchar(20) | NO   | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table Score(ScoreID varchar(20) primary key,CourseID varchar(20) not null,StudentID varchar(20) not null,DateOfExam date not null,CreditOb
tained varchar(10) not null);
Query OK, 0 rows affected (0.19 sec)

mysql> desc Score;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| ScoreID        | varchar(20) | NO   | PRI | NULL    |       |
| CourseID       | varchar(20) | NO   |     | NULL    |       |
| StudentID      | varchar(20) | NO   |     | NULL    |       |
| DateOfExam     | date        | NO   |     | NULL    |       |
| CreditObtained | varchar(10) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Score add foreign key(CourseID) references Course(CourseID);
Query OK, 0 rows affected (0.40 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Score;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| ScoreID        | varchar(20) | NO   | PRI | NULL    |       |
| CourseID       | varchar(20) | NO   | MUL | NULL    |       |
| StudentID      | varchar(20) | NO   |     | NULL    |       |
| DateOfExam     | date        | NO   |     | NULL    |       |
| CreditObtained | varchar(10) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Score add foreign key(StudentID) references Student(StudentID);
Query OK, 0 rows affected (0.79 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Score;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| ScoreID        | varchar(20) | NO   | PRI | NULL    |       |
| CourseID       | varchar(20) | NO   | MUL | NULL    |       |
| StudentID      | varchar(20) | NO   | MUL | NULL    |       |
| DateOfExam     | date        | NO   |     | NULL    |       |
| CreditObtained | varchar(10) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table Feedback(FeedbackID varchar(20) primary key,StudentID varchar(20) not null,date date not null,InstructorName varchar(40) not null,Feedback varchar(100) not null);
Query OK, 0 rows affected (0.21 sec)

mysql> desc Feedback;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| FeedbackID     | varchar(20)  | NO   | PRI | NULL    |       |
| StudentID      | varchar(20)  | NO   |     | NULL    |       |
| date           | date         | NO   |     | NULL    |       |
| InstructorName | varchar(40)  | NO   |     | NULL    |       |
| Feedback       | varchar(100) | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Feedback add foreign key(StudentID) references Student(StudentID);
Query OK, 0 rows affected (0.52 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Feedback;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| FeedbackID     | varchar(20)  | NO   | PRI | NULL    |       |
| StudentID      | varchar(20)  | NO   | MUL | NULL    |       |
| date           | date         | NO   |     | NULL    |       |
| InstructorName | varchar(40)  | NO   |     | NULL    |       |
| Feedback       | varchar(100) | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql>