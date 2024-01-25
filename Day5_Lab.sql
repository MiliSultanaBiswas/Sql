
-- actual student table that was updated at last lab.
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


							--Lab 1
--Display the ascending order by using order by clause based on their last name.
mysql> select * from student order by lastname asc;
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

							-- Lab 2
--count the number of students based on their gender by using group by clause and count function.
mysql> select count(StudentID),Gender from student group by gender;
+------------------+--------+
| count(StudentID) | Gender |
+------------------+--------+
|                4 | Female |
|                1 | Male   |
+------------------+--------+
