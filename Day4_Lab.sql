--showing the databases..
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
8 rows in set (0.01 sec)

--chenging the database enviornment.
mysql> use databaseschema;
Database changed

--creating a table name as BankAccount with some column.
mysql>  create table BankAccount(AccountID varchar(20) primary key,Account_holder_Name varchar(50) not null,Account_Balance int);
Query OK, 0 rows affected (0.40 sec)

--describing the BankAccount table.
mysql> desc bankaccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| AccountID           | varchar(20) | NO   | PRI | NULL    |       |
| Account_holder_Name | varchar(50) | NO   |     | NULL    |       |
| Account_Balance     | int         | YES  |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

--inserting the record into the BankAccount table.
--row 1
mysql> insert into bankaccount values('A101','Mili Sultana Biswas',60000);
Query OK, 1 row affected (0.09 sec)

--row 2
mysql> insert into bankaccount values('A102','Lilufa Chowdhury',600000);
Query OK, 1 row affected (0.05 sec)

--row 3
mysql> insert into bankaccount values('A103','Masuma Chowdhury',3000);
Query OK, 1 row affected (0.07 sec)

--row 4
mysql> insert into bankaccount values('A104','Tania Khatun',25000);
Query OK, 1 row affected (0.09 sec)

--row 5
mysql> insert into bankaccount values('A105','Manisha Saha',5000);
Query OK, 1 row affected (0.07 sec)

-- Here showing the table with the vaues.
mysql> select * from bankaccount;
+-----------+---------------------+-----------------+
| AccountID | Account_holder_Name | Account_Balance |
+-----------+---------------------+-----------------+
| A101      | Mili Sultana Biswas |           60000 |
| A102      | Lilufa Chowdhury    |          600000 |
| A103      | Masuma Chowdhury    |            3000 |
| A104      | Tania Khatun        |           25000 |
| A105      | Manisha Saha        |            5000 |
+-----------+---------------------+-----------------+
5 rows in set (0.00 sec)

--quary for retrive the Account_holder_Name and Account_Balance of all account holders from the bankaccount table. 

mysql> select account_holder_name,account_balance from bankaccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Mili Sultana Biswas |           60000 |
| Lilufa Chowdhury    |          600000 |
| Masuma Chowdhury    |            3000 |
| Tania Khatun        |           25000 |
| Manisha Saha        |            5000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

--quary for retrive the Account_holder_Name and Account_Balance from the bankaccount table where account balance is more than 30000. 

mysql> select account_holder_name,account_balance from bankaccount where account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Mili Sultana Biswas |           60000 |
| Lilufa Chowdhury    |          600000 |
+---------------------+-----------------+
2 rows in set (0.00 sec)

-- updating chenging the account balance of the account holders whose accountid is 101.
mysql> update bankaccount set account_balance=75000 where accountid='A101';
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

--here is the actual table with the values.
mysql> select * from bankaccount;
+-----------+---------------------+-----------------+
| AccountID | Account_holder_Name | Account_Balance |
+-----------+---------------------+-----------------+
| A101      | Mili Sultana Biswas |           60000 |
| A102      | Lilufa Chowdhury    |          600000 |
| A103      | Masuma Chowdhury    |            3000 |
| A104      | Tania Khatun        |           25000 |
| A105      | Manisha Saha        |            5000 |
+-----------+---------------------+-----------------+
5 rows in set (0.00 sec)

-- here is the updated result.
mysql> select * from bankaccount;
+-----------+---------------------+-----------------+
| AccountID | Account_holder_Name | Account_Balance |
+-----------+---------------------+-----------------+
| A101      | Mili Sultana Biswas |           75000 |
| A102      | Lilufa Chowdhury    |          600000 |
| A103      | Masuma Chowdhury    |            3000 |
| A104      | Tania Khatun        |           25000 |
| A105      | Manisha Saha        |            5000 |
+-----------+---------------------+-----------------+
5 rows in set (0.00 sec)