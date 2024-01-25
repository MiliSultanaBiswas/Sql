
--here display the actual table and its values.
mysql> select * from student;
+-----------+-----------+----------+-------------+--------+-----------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                       | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------------+------------+
| S101      | Mili      | Biswas   | 2002-09-29  | Female | milisultanabiswas@gmail.com | 8101324631 |
| S102      | Mita      | Biswas   | 2003-01-11  | Female | mitabiswas@gmail.com        | 9641763731 |
| S103      | Tania     | Khatun   | 2002-02-21  | Female | taniakhatun@gmail.com       | 9547170200 |
| S104      | Monia     | Khatun   | 2002-08-01  | Female | mniakhatun@gmail.com        | 9547878430 |
| S105      | Ashik     | Mondal   | 2002-10-12  | Male   | ashikmondal@gmail.com       | 9576890745 |
+-----------+-----------+----------+-------------+--------+-----------------------------+------------+
5 rows in set (0.02 sec)

--here is the quary for update on the student table email where firstname='Mili' and lastname='Biswas'.
mysql> update student set email='mili_biswas@gmail.com' where (firstname='Mili' and lastname='Biswas');
Query OK, 1 row affected (0.24 sec)
Rows matched: 1  Changed: 1  Warnings: 0

--showing the updated result here.
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


--here display the actual table and its values.
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
5 rows in set (0.31 sec)

--here is the quary for update on the instructor table email where firstname='Shawin' and lastname='Pradhan'.
mysql> update instructor set email='shawin_pradhan@anudip.org' where (firstname='Shawin' and lastname='Pradhan');
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0


--showing the updated result here.
mysql> select * from instructor;
+--------------+-----------+----------+----------------------------+
| InstructorID | FirstName | LastName | Email                      |
+--------------+-----------+----------+----------------------------+
| I101         | Shawin    | Pradhan  | shawin_pradhan@anudip.org  |
| I102         | Dipankar  | das      | dipankar.das@anudip.org    |
| I103         | Dipankar  | Biswas   | dipankar.biswas@anudip.org |
| I104         | Gargi     | Banerjee | gargi.banerjee@anudip.org  |
| I105         | Samir     | Das      | samir.das@anudip.org       |
+--------------+-----------+----------+----------------------------+
5 rows in set (0.00 sec)

--here display the actual table and its values.
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

--delete a record from the feedback table where feedbackId='f101'; 
mysql> delete from feedback where feedbackid='f101';
Query OK, 1 row affected (0.10 sec)

--showing the updated result here.
mysql> select * from feedback;
+------------+-----------+------------+----------------+-----------+
| FeedbackID | StudentID | date       | InstructorName | Feedback  |
+------------+-----------+------------+----------------+-----------+
| F102       | S102      | 2023-12-15 | Shawin Pradhan | excellent |
| F103       | S103      | 2023-12-15 | Shawin Pradhan | excellent |
| F104       | S104      | 2023-12-15 | Shawin Pradhan | excellent |
| F105       | S105      | 2023-12-15 | Shawin Pradhan | excellent |
+------------+-----------+------------+----------------+-----------+
4 rows in set (0.00 sec)

--List the student record whose first name start with 'M'.
mysql> select * from student where firstname like 'M%';
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth | Gender | Email                 | Phone      |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
| S101      | Mili      | Biswas   | 2002-09-29  | Female | mili_biswas@gmail.com | 8101324631 |
| S102      | Mita      | Biswas   | 2003-01-11  | Female | mitabiswas@gmail.com  | 9641763731 |
| S104      | Monia     | Khatun   | 2002-08-01  | Female | mniakhatun@gmail.com  | 9547878430 |
+-----------+-----------+----------+-------------+--------+-----------------------+------------+
3 rows in set (0.05 sec)