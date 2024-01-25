
-- describing the student table..
mysql> desc student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| StudentID   | varchar(10) | NO   | PRI | NULL    |       |
| FirstName   | varchar(20) | NO   |     | NULL    |       |
| LastName    | varchar(20) | NO   |     | NULL    |       |
| DateOfBirth | date        | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(50) | NO   |     | NULL    |       |
| Phone       | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)


--inserting values in student table.
--row 1..
mysql> insert into Student(StudentID,FirstName,LastName,DateOfBirth,Gender,Email,Phone) values('S101','Mili','Biswas','2002-09-29','Female','milisultanabiswas@gmail.com',8101324631);
Query OK, 1 row affected (0.07 sec)

--row 2..
mysql> insert into Student(StudentID,FirstName,LastName,DateOfBirth,Gender,Email,Phone) values('S102','Mita','Biswas','2003-01-11','Female','mitabiswas@gmail.com',9641763731);
Query OK, 1 row affected (0.06 sec)

--row 3..
mysql> insert into Student(StudentID,FirstName,LastName,DateOfBirth,Gender,Email,Phone) values('S103','Tania','Khatun','2002-02-21','Female','taniakhatun@gmail.com',9547170200);
Query OK, 1 row affected (0.05 sec)

--row 4..
mysql> insert into Student(StudentID,FirstName,LastName,DateOfBirth,Gender,Email,Phone) values('S104','Monia','Khatun','2002-08-01','Female','mniakhatun@gmail.com',9547878430);
Query OK, 1 row affected (0.07 sec)

--row 5..
mysql> insert into Student(StudentID,FirstName,LastName,DateOfBirth,Gender,Email,Phone) values('S105','Ashik','Mondal','2002-010-12','Male','ashikmondal@gmail.com',9576890745);
Query OK, 1 row affected (0.06 sec)

-- shoing the table with the values..
mysql> select * from Student;
+-----------+-----------+----------+-------------+--------+-----------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                       | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------------+------------+
| S101      | Mili      | Biswas   | 2002-09-29  | Female | milisultanabiswas@gmail.com | 8101324631 |
| S102      | Mita      | Biswas   | 2003-01-11  | Female | mitabiswas@gmail.com        | 9641763731 |
| S103      | Tania     | Khatun   | 2002-02-21  | Female | taniakhatun@gmail.com       | 9547170200 |
| S104      | Monia     | Khatun   | 2002-08-01  | Female | mniakhatun@gmail.com        | 9547878430 |
| S105      | Ashik     | Mondal   | 2002-10-12  | Male   | ashikmondal@gmail.com       | 9576890745 |
+-----------+-----------+----------+-------------+--------+-----------------------------+------------+
5 rows in set (0.00 sec)



-- describing the course table..
mysql> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| CourseID    | varchar(20) | NO   | PRI | NULL    |       |
| CoueseTitle | varchar(40) | NO   |     | NULL    |       |
| Cradits     | varchar(30) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

--inserting values in course table.
--row 1..
mysql> insert into course values('C101','Python',10000);
Query OK, 1 row affected (0.11 sec)

--row 2..
mysql> insert into course values('C102','Python',20000);
Query OK, 1 row affected (0.15 sec)

--row 3..
mysql> insert into course values('C103','Java',10000);
Query OK, 1 row affected (0.09 sec)

--row 4..
mysql> insert into course values('C104','Python',30000);
Query OK, 1 row affected (0.04 sec)

--row 5..
mysql> insert into course values('C105','Java',50000);
Query OK, 1 row affected (0.02 sec)

-- shoing the table with the values..
mysql> select * from course;
+----------+-------------+---------+
| CourseID | CoueseTitle | Cradits |
+----------+-------------+---------+
| C101     | Python      | 10000   |
| C102     | Python      | 20000   |
| C103     | Java        | 10000   |
| C104     | Python      | 30000   |
| C105     | Java        | 50000   |
+----------+-------------+---------+
5 rows in set (0.00 sec)

-- describing the instructor table..
mysql> desc instructor;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| InstructorID | varchar(20) | NO   | PRI | NULL    |       |
| FirstName    | varchar(40) | NO   |     | NULL    |       |
| LastName     | varchar(30) | NO   |     | NULL    |       |
| Email        | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

--inserting values in instructor table.
--row 1..
mysql> insert into instructor values('I101','Shawin','Pradhan','shawin.pradh
an@anudip.org');
Query OK, 1 row affected (0.12 sec)

--row 2..
mysql> insert into instructor values('I102','Dipankar','das','dipankar.das@anudip.org');
Query OK, 1 row affected (0.08 sec)

--row 3..
mysql> insert into instructor values('I103','Dipankar','Biswas','dipankar.biswas@anudip.org');
Query OK, 1 row affected (0.08 sec)

--row 4..
mysql> insert into instructor values('I104','Gargi','Banerjee','gargi.banerjee@anudip.org');
Query OK, 1 row affected (0.07 sec)

--row 5..
mysql> insert into instructor values('I105','Samir','Das','samir.das@anudip.org');
Query OK, 1 row affected (0.14 sec)

-- shoing the table with the values..
mysql> select * from instructor;
+--------------+-----------+----------+----------------------------+
| InstructorID | FirstName | LastName | Email                      |
+--------------+-----------+----------+----------------------------+
| I101         | Shawin    | Pradhan  | shawin.pradhan@anudip.org  |
| I102         | Dipankar  | das      | dipankar.das@anudip.org    |
| I103         | Dipankar  | Biswas   | dipankar.biswas@anudip.org |
| I104         | Gargi     | Banerjee | gargi.banerjee@anudip.org  |
| I105         | Samir     | Das      | samir.das@anudip.org       |
+--------------+-----------+----------+----------------------------+
5 rows in set (0.00 sec)

--describing the enrollment table..
mysql> desc enrollment;
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

--inserting values in enrollment table.
--row 1..
mysql> insert into enrollment values('E101','2023-06-01','S101','C101','I101');
Query OK, 1 row affected (0.09 sec)

--row 2..
mysql> insert into enrollment values('E102','2023-06-01','S102','C102','I102');
Query OK, 1 row affected (0.10 sec)

--row 3..
mysql> insert into enrollment values('E103','2023-06-01','S103','C103','I103');
Query OK, 1 row affected (0.07 sec)

--row 4..
mysql> insert into enrollment values('E104','2023-06-01','S104','C104','I104');
Query OK, 1 row affected (0.07 sec)

-- row 5..
mysql> insert into enrollment values('E105','2023-06-01','S105','C105','I105');
Query OK, 1 row affected (0.08 sec)

-- shoing the table with the values..
mysql> select * from enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| E101         | 2023-06-01     | S101      | C101     | I101         |
| E102         | 2023-06-01     | S102      | C102     | I102         |
| E103         | 2023-06-01     | S103      | C103     | I103         |
| E104         | 2023-06-01     | S104      | C104     | I104         |
| E105         | 2023-06-01     | S105      | C105     | I105         |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

--describing the score table..
mysql> desc score;
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

--inserting values in score table.
--row 1..
mysql> insert into score values('S101','C101','S101','2023-12-10','80');
Query OK, 1 row affected (0.08 sec)

--row 2..
mysql> insert into score values('S102','C102','S102','2023-12-10','90');
Query OK, 1 row affected (0.08 sec)

--row 3..
mysql> insert into score values('S103','C103','S103','2023-12-10','90');
Query OK, 1 row affected (0.07 sec)

--row 4..
mysql> insert into score values('S104','C104','S104','2023-12-10','92');
Query OK, 1 row affected (0.09 sec)

-- row 5..
mysql> insert into score values('S105','C105','S105','2023-12-10','89');
Query OK, 1 row affected (0.06 sec)

-- shoing the table with the values..
mysql> select * from score;
+---------+----------+-----------+------------+----------------+
| ScoreID | CourseID | StudentID | DateOfExam | CreditObtained |
+---------+----------+-----------+------------+----------------+
| S101    | C101     | S101      | 2023-12-10 | 80             |
| S102    | C102     | S102      | 2023-12-10 | 90             |
| S103    | C103     | S103      | 2023-12-10 | 90             |
| S104    | C104     | S104      | 2023-12-10 | 92             |
| S105    | C105     | S105      | 2023-12-10 | 89             |
+---------+----------+-----------+------------+----------------+
5 rows in set (0.00 sec)

--describing the feedback table..
mysql> desc feedback;
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

--inserting values in score table.
--row 1..
mysql> insert into feedback values('F101','S101','2023-12-15','Shawin Pradhan','excellent');
Query OK, 1 row affected (0.06 sec)

--row 2..
mysql> insert into feedback values('F102','S102','2023-12-15','Shawin Pradhan','excellent');
Query OK, 1 row affected (0.08 sec)

--row 3..
mysql> insert into feedback values('F103','S103','2023-12-15','Shawin Pradhan','excellent');
Query OK, 1 row affected (0.07 sec)

--row 4..
mysql> insert into feedback values('F104','S104','2023-12-15','Shawin Pradhan','excellent');
Query OK, 1 row affected (0.06 sec)

--row 5..
mysql> insert into feedback values('F105','S105','2023-12-15','Shawin Pradhan','excellent');
Query OK, 1 row affected (0.08 sec)

-- shoing the table with the values..
mysql> select * from feedback;
+------------+-----------+------------+----------------+-----------+
| FeedbackID | StudentID | date       | InstructorName | Feedback  |
+------------+-----------+------------+----------------+-----------+
| F101       | S101      | 2023-12-15 | Shawin Pradhan | excellent |
| F102       | S102      | 2023-12-15 | Shawin Pradhan | excellent |
| F103       | S103      | 2023-12-15 | Shawin Pradhan | excellent |
| F104       | S104      | 2023-12-15 | Shawin Pradhan | excellent |
| F105       | S105      | 2023-12-15 | Shawin Pradhan | excellent |
+------------+-----------+------------+----------------+-----------+
5 rows in set (0.00 sec)