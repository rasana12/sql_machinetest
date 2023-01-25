
--Q1--

SELECT sum(int_price* int_Quantity) as totalcost FROM tbl_stock;

 totalcost
-----------
   63865.5

--Q2--

SELECT sum(int_Quantity) as total_no_product FROM tbl_stock;

 total_no_product
------------------
               77

--Q4--

SELECT count(DISTINCT vchr_name) as items FROM tbl_stock;

 items
-------
     5

--Q5--

SELECT vchr_name,int_price FROM tbl_stock WHERE int_price = (SELECT MAX(int_price) FROM tbl_stock);

 vchr_name | int_price
-----------+-----------
 Memory    |    3501.5


--Q7--

INSERT INTO tbl_classes(vchr_class_Name,fk_int_dept_id)VALUES
('CS100',1),('CS101',1),('CS102',1),('CS103',1),('EC200',2),('CC300',3),('CS400',4);
SELECT count(DISTINCT pk_int_class_id) as no_of_classes FROM tbl_classes;

 no_of_classes
---------------
             7


--Q6--

INSERT INTO tbl_enrollment(int_count,fk_int_class_id) VALUES(40,1),(15,2),(10,3),
(12,4),(60,2),(14,6),(200,7);
SELECT sum(int_count) as total_enrollment FROM tbl_enrollment;

total_enrollment
------------------
              351

--Q8--

DELETE FROM tbl_stock WHERE fk_int_supplier = (SELECT pk_int_supplier_id FROM 
tbl_supplier WHERE vchr_supplier_name='creative');


 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4

--Q9--

SELECT concat(vchr_name,int_price) as product_price FROM tbl_stock;

 product_price
----------------
 Mouse501.5
 Keyboard451.5
 Modem1201.5
 Headphone751.5
 Memory3501.5

 --Q10--

 CREATE TABLE tbl_student (enrl_No int PRIMARY KEY,
 roll_no int,name varchar(25),
 City varchar(25),mobile bigint,DOB DATE
 );
 INSERT INTO tbl_student VALUES(11,2,'akhil','delhi',98756579,'12-01-1986'),
 (6,4,'Maya','Banglore',98734534,'12-01-1987'),(1,8,'Anoop','Banglore',93456535,'22-12-1990'),
 (20,1,'Paul','Cochin',96754555,'13-03-1991'),
( 3,5,'Sandeep','Delhi',84865644,'14-06-1993');
CREATE TABLE tbl_grade(roll_no int,course varchar(20),
grade varchar(20),
PRIMARY KEY(roll_no,course)
);
 
 INSERT INTO tbl_grade VALUES(2,'C','A'),(2,'JAVA','B'),(1,'C','B'),
 (1,'JAVA','A'),(4,'PHP','A'),(4,'JAVA','A'),(4,'C','B'),(8,'JAVA','B'),
 (5,'PHP','A'),(5,'JAVA','D');
 SELECT name,course,grade FROM tbl_student INNER JOIN tbl_grade ON tbl_student.roll_no=
 tbl_grade.roll_no WHERE grade = 'A';

 name   | course | grade
---------+--------+-------
 akhil   | C      | A
 Maya    | JAVA   | A
 Maya    | PHP    | A
 Paul    | JAVA   | A
 Sandeep | PHP    | A

 --Q11--

 SELECT count(name),grade FROM tbl_student INNER JOIN tbl_grade ON tbl_student.roll_no=
 tbl_grade.roll_no GROUP BY grade HAVING grade = 'B';

  count | grade
-------+-------
     4 | B


--Q12--

SELECT max(tbl_student.roll_no) as roll_no,name,count(course) as nuumber_of_course
FROM (tbl_student INNER JOIN tbl_grade on tbl_student.roll_no = tbl_grade.roll_no)
GROUP BY name;

roll_no |  name   | nuumber_of_course
---------+---------+-------------------
       8 | Anoop   |                 1
       1 | Paul    |                 2
       5 | Sandeep |                 2
       2 | akhil   |                 2
       4 | Maya    |                 3


--Q13--

SELECT name,City,course FROM tbl_student INNER JOIN tbl_grade ON 
tbl_student.roll_no=tbl_grade.roll_no WHERE City='Banglore' and course='JAVA';

 name  |   city   | course
-------+----------+--------
 Maya  | Banglore | JAVA
 Anoop | Banglore | JAVA

 --Q14--

SELECT name,course FROM tbl_student INNER JOIN tbl_grade ON tbl_student.roll_no =
tbl_grade.roll_no WHERE name like 'a%';

 name  | course
-------+--------
 akhil | C
 akhil | JAVA
 anoop | JAVA

 --Q15--

 SELECT name,date_part('year',age(DOB)) as age FROM tbl_student;

  name   | age
---------+-----
 akhil   |  37
 Maya    |  36
 Paul    |  31
 Sandeep |  29
 anoop   |  32

 --Q16--

 SELECT name,to_char(DOB,'DD Mon YYYY') FROM tbl_student;

  name   |   to_char
---------+-------------
 akhil   | 12 Jan 1986
 Maya    | 12 Jan 1987
 Paul    | 13 Mar 1991
 Sandeep | 14 Jun 1993
 anoop   | 22 Dec 1990