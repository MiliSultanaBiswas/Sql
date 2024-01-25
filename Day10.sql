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
6 rows in set (0.14 sec)
--retriving all the data from the student table.
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

--retriving all the data from the enrollment table.
mysql> select * from enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| E101         | 2023-06-01     | S101      | C101     | I101         |
| E102         | 2023-06-01     | S102      | C102     | I102         |
| E103         | 2023-06-01     | S103      | C103     | I103         |
| E104         | 2023-06-01     | S104      | C104     | I104         |
| E105         | 2023-06-01     | S105      | C105     | I105         |
| E106         | 2024-01-12     | S101      | C105     | I101         |
| E107         | 2024-01-12     | S102      | C104     | I102         |
+--------------+----------------+-----------+----------+--------------+
7 rows in set (0.00 sec)
                        --lab1
--Assume a university where students can enroll in various courses.Now, write down a FULL outer JOIN query to retrieve the details 

--MySQL does not support FULL OUTER JOIN directly, but we can simulate it using a combination of LEFT JOIN and RIGHT JOIN along with the UNION operator.

mysql> SELECT S.StudentID, S.FirstName, S.LastName, E.EnrollmentID, E.CourseID FROM Student S LEFT JOIN Enrollment E ON S.StudentID = E.StudentID UNION ALL SELECT S.StudentID, S.FirstName, S.LastName, E.EnrollmentID, E.CourseID FROM Student S LEFT JOIN Enrollment E ON S.StudentID = E.StudentID;
+-----------+-----------+----------+--------------+----------+
| StudentID | FirstName | LastName | EnrollmentID | CourseID |
+-----------+-----------+----------+--------------+----------+
| S101      | Mili      | Biswas   | E101         | C101     |
| S101      | Mili      | Biswas   | E106         | C105     |
| S102      | Mita      | Biswas   | E102         | C102     |
| S102      | Mita      | Biswas   | E107         | C104     |
| S103      | Tania     | Khatun   | E103         | C103     |
| S104      | Monia     | Khatun   | E104         | C104     |
| S105      | Ashik     | Mondal   | E105         | C105     |
| S106      | Aduri     | Khatun   | NULL         | NULL     |
| S107      | Lina      | Das      | NULL         | NULL     |
| S101      | Mili      | Biswas   | E101         | C101     |
| S101      | Mili      | Biswas   | E106         | C105     |
| S102      | Mita      | Biswas   | E102         | C102     |
| S102      | Mita      | Biswas   | E107         | C104     |
| S103      | Tania     | Khatun   | E103         | C103     |
| S104      | Monia     | Khatun   | E104         | C104     |
| S105      | Ashik     | Mondal   | E105         | C105     |
| S106      | Aduri     | Khatun   | NULL         | NULL     |
| S107      | Lina      | Das      | NULL         | NULL     |
+-----------+-----------+----------+--------------+----------+
18 rows in set (0.04 sec)
                --lab2
 --Assume a university where students can enroll in various courses.Now, write down a Natural JOIN query to retrieve the details
mysql> SELECT S.StudentID, S.FirstName, S.LastName, E.EnrollmentID, E.CourseID FROM Student S NATURAL JOIN Enrollment E;
+-----------+-----------+----------+--------------+----------+
| StudentID | FirstName | LastName | EnrollmentID | CourseID |
+-----------+-----------+----------+--------------+----------+
| S101      | Mili      | Biswas   | E101         | C101     |
| S102      | Mita      | Biswas   | E102         | C102     |
| S103      | Tania     | Khatun   | E103         | C103     |
| S104      | Monia     | Khatun   | E104         | C104     |
| S105      | Ashik     | Mondal   | E105         | C105     |
| S101      | Mili      | Biswas   | E106         | C105     |
| S102      | Mita      | Biswas   | E107         | C104     |
+-----------+-----------+----------+--------------+----------+
7 rows in set (0.00 sec)