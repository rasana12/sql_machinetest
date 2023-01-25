--Q1--

INSERT INTO tbl_stock(vchr_name,int_Quantity,int_price,fk_int_supplier)VALUES('Mouse',10,500,1);
INSERT INTO tbl_stock(vchr_name,int_Quantity,int_price,fk_int_supplier)VALUES('Keyboard',5,450,3);
INSERT INTO tbl_stock(vchr_name,int_Quantity,int_price,fk_int_supplier)VALUES('Modem',10,1200,2);
INSERT INTO tbl_stock(vchr_name,int_Quantity,int_price,fk_int_supplier)VALUES('Memory',100,1501.5,5);
INSERT INTO tbl_stock(vchr_name,int_Quantity,int_price,fk_int_supplier)VALUES('Headphone',50,750,4);
INSERT INTO tbl_stock(vchr_name,int_Quantity,int_price,fk_int_supplier)VALUES('Memory',2,3500,4);
SELECT * FROM tbl_stock;

--Q2--

UPDATE tbl_stock SET int_price=int_price+1.5;
SELECT * FROM tbl_stock;

pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4

--Q3--
SELECT * FROM tbl_stock WHERE int_price >1000;

pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               3 | Modem     |           10 |    1201.5 |               2
               6 | Memory    |            2 |    3501.5 |               4



--Q4--

SELECT * FROM tbl_stock ORDER BY vchr_name;

 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               6 | Memory    |            2 |    3501.5 |               4
               3 | Modem     |           10 |    1201.5 |               2
               1 | Mouse     |           10 |     501.5 |               1

--Q5--

SELECT * FROM tbl_stock ORDER BY vchr_name LIMIT 3;

 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               6 | Memory    |            2 |    3501.5 |               4


--Q6--

SELECT * FROM tbl_stock ORDER BY vchr_name LIMIT 3 OFFSET 3;

 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               3 | Modem     |           10 |    1201.5 |               2
               1 | Mouse     |           10 |     501.5 |               1

--Q7--

SELECT vchr_name,int_Quantity,int_price,int_Quantity * int_price as int_Quantity_price FROM tbl_stock;

 vchr_name | int_quantity | int_price | int_quantity_price
-----------+--------------+-----------+--------------------
 Mouse     |           10 |     501.5 |               5015
 Keyboard  |            5 |     451.5 |             2257.5
 Modem     |           10 |    1201.5 |              12015
 Headphone |           50 |     751.5 |              37575
 Memory    |            2 |    3501.5 |               7003


--Q8--

DELETE FROM tbl_stock WHERE fk_int_supplier =5;
SELECT * FROM tbl_stock;

 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4

--Q9--

INSERT INTO tbl_dept(vchr_dept_Name,vchr_dept_description)VALUES('Computer Science','CS'),
('Electronics','EC'),('Commerce','CC'),('Arts','AR');

SELECT * FROM tbl_dept;


 pk_int_dept_id |  vchr_dept_name  | vchr_dept_description
----------------+------------------+-----------------------
              1 | Computer Science | CS
              2 | Electronics      | EC
              3 | Commerce         | CC
              4 | Arts             | AR






























