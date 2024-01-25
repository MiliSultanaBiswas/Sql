						--Lab1
--student  datatable
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
7 rows in set (0.74 sec)

--inserting some values in enrollment table
--row1
mysql> insert into enrollment values('E106','2024-01-12','S101','C105','I101');
--row2
mysql> insert into enrollment values('E107','2024-01-12','S102','C104','I102');
-- this is enrollment data table.
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

-- right join on student data table & enrollment table.
mysql>  select student.StudentID,Student.FirstName,Student.LastName,enrollment.* from student right outer join enrollment on student.StudentID=enrollment.studentid;
+-----------+-----------+----------+--------------+----------------+-----------+----------+--------------+
| StudentID | FirstName | LastName | EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+-----------+-----------+----------+--------------+----------------+-----------+----------+--------------+
| S101      | Mili      | Biswas   | E101         | 2023-06-01     | S101      | C101     | I101         |
| S102      | Mita      | Biswas   | E102         | 2023-06-01     | S102      | C102     | I102         |
| S103      | Tania     | Khatun   | E103         | 2023-06-01     | S103      | C103     | I103         |
| S104      | Monia     | Khatun   | E104         | 2023-06-01     | S104      | C104     | I104         |
| S105      | Ashik     | Mondal   | E105         | 2023-06-01     | S105      | C105     | I105         |
| S101      | Mili      | Biswas   | E106         | 2024-01-12     | S101      | C105     | I101         |
| S102      | Mita      | Biswas   | E107         | 2024-01-12     | S102      | C104     | I102         |
+-----------+-----------+----------+--------------+----------------+-----------+----------+--------------+
7 rows in set (0.00 sec)

						L--ab2
--left join with 3tables as student,enrollment and course.
mysql>  select student.StudentID,Student.FirstName,Student.Email,enrollment.EnrollmentID,course.courseid,course.CoueseTitle from student left join enrollment on student.studentid=enrollment.studentid left join course on course.courseid=enrollment.courseid ;
+-----------+-----------+-----------------------+--------------+----------+-------------+
| StudentID | FirstName | Email                 | EnrollmentID | courseid | CoueseTitle |
+-----------+-----------+-----------------------+--------------+----------+-------------+
| S101      | Mili      | mili_biswas@gmail.com | E101         | C101     | Python      |
| S101      | Mili      | mili_biswas@gmail.com | E106         | C105     | Java        |
| S102      | Mita      | mitabiswas@gmail.com  | E102         | C102     | Python      |
| S102      | Mita      | mitabiswas@gmail.com  | E107         | C104     | Python      |
| S103      | Tania     | taniakhatun@gmail.com | E103         | C103     | Java        |
| S104      | Monia     | mniakhatun@gmail.com  | E104         | C104     | Python      |
| S105      | Ashik     | ashikmondal@gmail.com | E105         | C105     | Java        |
| S106      | Aduri     | adurikhatun@gmail.com | NULL         | NULL     | NULL        |
| S107      | Lina      | linadas@example.com   | NULL         | NULL     | NULL        |
+-----------+-----------+-----------------------+--------------+----------+-------------+
9 rows in set (0.00 sec)





















