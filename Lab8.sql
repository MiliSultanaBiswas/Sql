
-- use the studentmanagementsystem database.
mysql> use studentmanagementsystem;
Database changed
mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| course                            |
| enrollment                        |
| feedback                          |
| instructor                        |
| score                             |
| student                           |
+-----------------------------------+
6 rows in set (0.18 sec)

--student table.
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
7 rows in set (0.09 sec)

--enrollment table.
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
5 rows in set (0.09 sec)

--retriving information about each student id , first name, last name,and their enrollment details,including the enrollment id and the associated course id.
mysql> select student.StudentID,student.FirstName,student.LastName,enrollment.* from student inner join enrollment on student.StudentID=enrollment.studentid;
+-----------+-----------+----------+--------------+----------------+-----------+----------+--------------+
| StudentID | FirstName | LastName | EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+-----------+-----------+----------+--------------+----------------+-----------+----------+--------------+
| S101      | Mili      | Biswas   | E101         | 2023-06-01     | S101      | C101     | I101         |
| S102      | Mita      | Biswas   | E102         | 2023-06-01     | S102      | C102     | I102         |
| S103      | Tania     | Khatun   | E103         | 2023-06-01     | S103      | C103     | I103         |
| S104      | Monia     | Khatun   | E104         | 2023-06-01     | S104      | C104     | I104         |
| S105      | Ashik     | Mondal   | E105         | 2023-06-01     | S105      | C105     | I105         |
+-----------+-----------+----------+--------------+----------------+-----------+----------+--------------+
5 rows in set (0.00 sec)

mysql>