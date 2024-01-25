Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.35 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases
    ->
    ->
    -> j
    ->
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'j' at line 4
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
6 rows in set (0.83 sec)

mysql> create database
    -> StudentManagementSystem;
Query OK, 1 row affected (0.29 sec)

mysql> create database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
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

mysql> create table Student(StudentID int(10) primary key,FirstName varchar(20),LastName varchar(20),DateOfBirth date,Gender varchar(10),Email varchar(50),Phone int(15));
ERROR 1046 (3D000): No database selected
mysql> use StudentManagementSystem;
Database changed
mysql> create table Student(StudentID int(10) primary key,FirstName varchar(20),LastName varchar(20),DateOfBirth date,Gender varchar(10),Email varchar(50),Phone int(15));
Query OK, 0 rows affected, 2 warnings (0.68 sec)

mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| student                           |
+-----------------------------------+
1 row in set (0.10 sec)

mysql> desc Student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| StudentID   | int         | NO   | PRI | NULL    |       |
| FirstName   | varchar(20) | YES  |     | NULL    |       |
| LastName    | varchar(20) | YES  |     | NULL    |       |
| DateOfBirth | date        | YES  |     | NULL    |       |
| Gender      | varchar(10) | YES  |     | NULL    |       |
| Email       | varchar(50) | YES  |     | NULL    |       |
| Phone       | int         | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.09 sec)

mysql> create table Couese(CourseID int(20) primary key,CoueseTitle varchar(40),Cradits varchar(30));
Query OK, 0 rows affected, 1 warning (0.14 sec)

mysql> desc Course;
ERROR 1146 (42S02): Table 'studentmanagementsystem.course' doesn't exist
mysql> create table Course(CourseID int(20) primary key,CoueseTitle varchar(40),Cradits varchar(30));
Query OK, 0 rows affected, 1 warning (0.18 sec)

mysql> desc Course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| CourseID    | int         | NO   | PRI | NULL    |       |
| CoueseTitle | varchar(40) | YES  |     | NULL    |       |
| Cradits     | varchar(30) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table Instructor(InstructorID int(20) primary key,FirstName varchar(40),LastName varchar(30),Email varchar(50))
;
Query OK, 0 rows affected, 1 warning (0.62 sec)

mysql> desc Instructor;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| InstructorID | int         | NO   | PRI | NULL    |       |
| FirstName    | varchar(40) | YES  |     | NULL    |       |
| LastName     | varchar(30) | YES  |     | NULL    |       |
| Email        | varchar(50) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table Enrollment(EnrollmentID int(20) primary key,EnrollmentDate date,foreign key (StudentID) references Student (StudentID),foreign key (CourseID) references Course (CourseID),foreign key (InstructorID) references Instructor (Instructo
rID));
ERROR 1072 (42000): Key column 'StudentID' doesn't exist in table
mysql> create table Enrollment(EnrollmentID int(20) primary key,EnrollmentDate date,foreign key (StudentID) references Student (StudentID),foreign key (CourseID) references Course (CourseID),foreign key (InstructorID) references Instructor (InstructorID));
ERROR 1072 (42000): Key column 'StudentID' doesn't exist in table
mysql> create table Enrollment(EnrollmentID int(20) primary key,EnrollmentDate date,StudentID int(10),CourseID int(20),InstructorID int (20));
Query OK, 0 rows affected, 4 warnings (0.36 sec)

mysql> desc Enrolment;
ERROR 1146 (42S02): Table 'studentmanagementsystem.enrolment' doesn't exist
mysql> desc Enrollment;
+----------------+------+------+-----+---------+-------+
| Field          | Type | Null | Key | Default | Extra |
+----------------+------+------+-----+---------+-------+
| EnrollmentID   | int  | NO   | PRI | NULL    |       |
| EnrollmentDate | date | YES  |     | NULL    |       |
| StudentID      | int  | YES  |     | NULL    |       |
| CourseID       | int  | YES  |     | NULL    |       |
| InstructorID   | int  | YES  |     | NULL    |       |
+----------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Enrollment add foreign key(StudentID) references Student(StudentID);
Query OK, 0 rows affected (0.75 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Enrollment;
+----------------+------+------+-----+---------+-------+
| Field          | Type | Null | Key | Default | Extra |
+----------------+------+------+-----+---------+-------+
| EnrollmentID   | int  | NO   | PRI | NULL    |       |
| EnrollmentDate | date | YES  |     | NULL    |       |
| StudentID      | int  | YES  | MUL | NULL    |       |
| CourseID       | int  | YES  |     | NULL    |       |
| InstructorID   | int  | YES  |     | NULL    |       |
+----------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Enrollment add foreign key(CourseID) references Course(CourseID);
Query OK, 0 rows affected (0.66 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Enrollment;
+----------------+------+------+-----+---------+-------+
| Field          | Type | Null | Key | Default | Extra |
+----------------+------+------+-----+---------+-------+
| EnrollmentID   | int  | NO   | PRI | NULL    |       |
| EnrollmentDate | date | YES  |     | NULL    |       |
| StudentID      | int  | YES  | MUL | NULL    |       |
| CourseID       | int  | YES  | MUL | NULL    |       |
| InstructorID   | int  | YES  |     | NULL    |       |
+----------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Enrollment add foreign key(InstructorID) references Instructor(InstructorID);
Query OK, 0 rows affected (0.76 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Enrollment;
+----------------+------+------+-----+---------+-------+
| Field          | Type | Null | Key | Default | Extra |
+----------------+------+------+-----+---------+-------+
| EnrollmentID   | int  | NO   | PRI | NULL    |       |
| EnrollmentDate | date | YES  |     | NULL    |       |
| StudentID      | int  | YES  | MUL | NULL    |       |
| CourseID       | int  | YES  | MUL | NULL    |       |
| InstructorID   | int  | YES  | MUL | NULL    |       |
+----------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table Score(ScoreID int(20) primary key,CourseID int(20),StudentID int(20),DateOfExam date,CreditObtained int(10));
Query OK, 0 rows affected, 4 warnings (0.21 sec)

mysql> desc Score;
+----------------+------+------+-----+---------+-------+
| Field          | Type | Null | Key | Default | Extra |
+----------------+------+------+-----+---------+-------+
| ScoreID        | int  | NO   | PRI | NULL    |       |
| CourseID       | int  | YES  |     | NULL    |       |
| StudentID      | int  | YES  |     | NULL    |       |
| DateOfExam     | date | YES  |     | NULL    |       |
| CreditObtained | int  | YES  |     | NULL    |       |
+----------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Score add foreign key(CourseID) references Course(CourseID);
Query OK, 0 rows affected (0.43 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table Score add foreign key(StudentID) references Student(StudentID);
Query OK, 0 rows affected (0.62 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Score;
+----------------+------+------+-----+---------+-------+
| Field          | Type | Null | Key | Default | Extra |
+----------------+------+------+-----+---------+-------+
| ScoreID        | int  | NO   | PRI | NULL    |       |
| CourseID       | int  | YES  | MUL | NULL    |       |
| StudentID      | int  | YES  | MUL | NULL    |       |
| DateOfExam     | date | YES  |     | NULL    |       |
| CreditObtained | int  | YES  |     | NULL    |       |
+----------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> create table Feedback(FeedbackID int(20) primary key,StudentID int(20),date ,InstructorName varchar(40),Feedback varchar(100));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',InstructorName varchar(40),Feedback varchar(100))' at line 1
mysql> create table Feedback(FeedbackID int(20) primary key,StudentID int(20),date date,InstructorName varchar(40),Feedback varchar(100));
Query OK, 0 rows affected, 2 warnings (0.20 sec)

mysql> desc Feedback;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| FeedbackID     | int          | NO   | PRI | NULL    |       |
| StudentID      | int          | YES  |     | NULL    |       |
| date           | date         | YES  |     | NULL    |       |
| InstructorName | varchar(40)  | YES  |     | NULL    |       |
| Feedback       | varchar(100) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table Feedback add foreign key(StudentID) references Student(StudentID);
Query OK, 0 rows affected (0.66 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Feedback;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| FeedbackID     | int          | NO   | PRI | NULL    |       |
| StudentID      | int          | YES  | MUL | NULL    |       |
| date           | date         | YES  |     | NULL    |       |
| InstructorName | varchar(40)  | YES  |     | NULL    |       |
| Feedback       | varchar(100) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)