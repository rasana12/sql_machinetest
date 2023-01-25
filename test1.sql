--Q1--

CREATE TABLE tbl_stock (
    pk_int_stock_id SERIAL PRIMARY KEY,
    vchr_name varchar(20),
    int_Quantity int,
    int_price int
);
--Q2--

ALTER TABLE tbl_stock 
ALTER COLUMN int_price TYPE float;

--Q3--

CREATE TABLE tbl_supplier(
    pk_int_supplier_id SERIAL PRIMARY KEY,
    vchr_supplier_name varchar(25)
);

--Q4--

ALTER TABLE tbl_stock
ADD COLUMN fk_int_supplier int;

--Q5--

ALTER TABLE tbl_stock
ADD CONSTRAINT fk_int_supplier FOREIGN KEY(fk_int_supplier) REFERENCES tbl_supplier(pk_int_supplier_id);

--Q6--

CREATE TABLE tbl_dept(
    pk_int_dept_id SERIAL PRIMARY KEY,
    vchr_dept_Name varchar(20)
);

--Q7--

CREATE TABLE tbl_classes(
    pk_int_class_id SERIAL PRIMARY KEY,
    vchr_class_Name varchar(20),
    fk_int_dept_id int,
    FOREIGN KEY (fk_int_dept_id)REFERENCES tbl_dept(pk_int_dept_id) ON DELETE CASCADE ON UPDATE CASCADE
);

--Q8--

CREATE TABLE tbl_enrollment(
    pk_int_enrollment_id SERIAL PRIMARY KEY,
    int_count int,
    fk_int_class_id int,
    FOREIGN KEY (fk_int_class_id)REFERENCES tbl_classes(pk_int_class_id) ON DELETE CASCADE ON UPDATE CASCADE
);

--Q9--

ALTER TABLE tbl_classes ADD UNIQUE(vchr_class_Name);

--Q10--

ALTER TABLE tbl_dept
ADD COLUMN vchr_dept_description varchar(20);

--Q11--

INSERT INTO tbl_supplier(vchr_supplier_name)VALUES('Logitech');
INSERT INTO tbl_supplier(vchr_supplier_name)VALUES('samsung');
INSERT INTO tbl_supplier(vchr_supplier_name)VALUES('Iball');
INSERT INTO tbl_supplier(vchr_supplier_name)VALUES('LG');
INSERT INTO tbl_supplier(vchr_supplier_name)VALUES('creative');
SELECT * FROM tbl_supplier;

 pk_int_supplier_id | vchr_supplier_name
--------------------+--------------------
                  1 | Logitech
                  2 | samsung
                  3 | Iball
                  4 | LG
                  5 | creative