CREATE DATABASE STUDENT;

USE STUDENT;

CREATE TABLE STUDENT(ID VARCHAR(10), FIRSTNAME VARCHAR(20), LASTNAME VARCHAR(20), LOCATION VARCHAR(20), PINCODE VARCHAR(20)); 
INSERT INTO STUDENT(ID, FIRSTNAME, LASTNAME, LOCATION, PINCODE) VALUES (1,'PAVAN','D','BANGLORE','560064');
INSERT INTO STUDENT(ID, FIRSTNAME, LASTNAME, LOCATION, PINCODE) VALUES (2,'DEEPAK','D','BANGLORE','560064');
INSERT INTO STUDENT(ID, FIRSTNAME, LASTNAME, LOCATION, PINCODE) VALUES (3,'SUNIL','M','MUMBAI','620064');
INSERT INTO STUDENT(ID, FIRSTNAME, LASTNAME, LOCATION, PINCODE) VALUES (4,'SAI','M','HYDERBAD','460064');
INSERT INTO STUDENT(ID, FIRSTNAME, LASTNAME, LOCATION, PINCODE) VALUES (5,'KHIZER','S','MUMBAI','360064');
INSERT INTO STUDENT(ID, FIRSTNAME, LASTNAME, LOCATION, PINCODE) VALUES (6,'VIKAS','R','PUNE','450063');
INSERT INTO STUDENT(ID, FIRSTNAME, LASTNAME, LOCATION, PINCODE) VALUES (7,'VARUN','D','DELHI','430034');
INSERT INTO STUDENT(ID, FIRSTNAME, LASTNAME, LOCATION, PINCODE) VALUES (8,'KEERTHY','R','BANGLORE','560064');
INSERT INTO STUDENT(ID, FIRSTNAME, LASTNAME, LOCATION, PINCODE) VALUES (9,'ROHIT','D','BANGLORE','560064');
INSERT INTO STUDENT(ID, FIRSTNAME, LASTNAME, LOCATION, PINCODE) VALUES (10,'VISHAL','V','BANGLORE','560064');

SELECT * FROM STUDENT;

-- WHERE CLAUSE
SELECT * FROM STUDENT WHERE LASTNAME='D';

CREATE TABLE MARKS(ID VARCHAR(10), PYHSICS VARCHAR(20), CHEMISTRY VARCHAR(20), MATHS VARCHAR(20), COMPUTER VARCHAR(20));

-- CREATING MARKS TABLE
INSERT INTO MARKS(ID, PYHSICS, CHEMISTRY, MATHS, COMPUTER) VALUES (1, '50', '70', '77', '80');
INSERT INTO MARKS(ID, PYHSICS, CHEMISTRY, MATHS, COMPUTER) VALUES (2, '70', '67', '63', '84');
INSERT INTO MARKS(ID, PYHSICS, CHEMISTRY, MATHS, COMPUTER) VALUES (3, '88', '45', '57', '85');
INSERT INTO MARKS(ID, PYHSICS, CHEMISTRY, MATHS, COMPUTER) VALUES (4, '57', '68', '84', '73');
INSERT INTO MARKS(ID, PYHSICS, CHEMISTRY, MATHS, COMPUTER) VALUES (5, '54', '93', '89', '55');
INSERT INTO MARKS(ID, PYHSICS, CHEMISTRY, MATHS, COMPUTER) VALUES (6, '89', '67', '68', '66');
INSERT INTO MARKS(ID, PYHSICS, CHEMISTRY, MATHS, COMPUTER) VALUES (7, '89', '98', '76', '63');
INSERT INTO MARKS(ID, PYHSICS, CHEMISTRY, MATHS, COMPUTER) VALUES (8, '67', '77', '83', '67');
INSERT INTO MARKS(ID, PYHSICS, CHEMISTRY, MATHS, COMPUTER) VALUES (9, '59', '68', '78', '84');
INSERT INTO MARKS(ID, PYHSICS, CHEMISTRY, MATHS, COMPUTER) VALUES (10, '72', '75', '67', '80');

SELECT * FROM MARKS;

-- FINDING PHYSICS MARKS >= 60;
SELECT * FROM MARKS WHERE PYHSICS >='60';

-- SELECTING SINGLE COLUMS FROM STUDENT TABLE
SELECT FIRSTNAME FROM STUDENT;

-- SELECTING SINGLE ROW FROM MARKS TABLE;
SELECT * FROM MARKS WHERE ID='1 ';

-- SELECTING DISTINCT LOCATION FROM STUDENT TABLE;
SELECT distinct LOCATION FROM STUDENT;

-- SELECTING FIRST TWO CHARACTER AS FIRSTCHAR FROM STUDENT TABLE;
SELECT LEFT(FIRSTNAME,2) AS FIRSTCHAR FROM STUDENT;

-- WHERE CLAUSE WITH AND
SELECT * FROM STUDENT WHERE LOCATION='BANGLORE' AND LASTNAME='D';

-- WHERE CLAUSE WITH OR
SELECT * FROM MARKS WHERE PYHSICS<='50' OR CHEMISTRY>='90';

-- WHERE CLAUSE WITH NOT
SELECT * FROM STUDENT WHERE NOT LOCATION='BANGLORE';

-- MAKING FIRSTNAME ORDERBY FROM STUDENT TABLE
SELECT * FROM STUDENT order by FIRSTNAME ASC;

-- 
SELECT * FROM MARKS order by CHEMISTRY DESC;

-- SELECTING CHEMISTRY  COLUMN FROM MARKS ORDERED IN ASCENDING ORDER
SELECT CHEMISTRY FROM MARKS order by CHEMISTRY ASC;

--
SELECT distinct LASTNAME FROM STUDENT ORDER BY LASTNAME;

-- AGGREGATE FUNCTIONS
SELECT min(PYHSICS) AS MINIUM FROM MARKS;

SELECT MAX(COMPUTER) AS MAXIMUM FROM MARKS;

SELECT count(COMPUTER) AS COMNUMBER FROM MARKS; 

SELECT avg(CHEMISTRY) AS AVERAGE FROM MARKS;

SELECT sum(COMPUTER) AS TOTAL FROM MARKS;

-- in
SELECT * FROM STUDENT WHERE LOCATION NOT IN ('BANGLORE');

-- BETWEEN
SELECT * FROM MARKS WHERE PYHSICS BETWEEN 80 AND 100;

-- UNION ALL
SELECT FIRSTNAME FROM STUDENT UNION ALL SELECT PYHSICS FROM MARKS; 

SELECT COUNT(ID), FIRSTNAME FROM STUDENT GROUP BY FIRSTNAME;

SELECT COUNT(ID), PINCODE FROM STUDENT GROUP BY PINCODE;

SELECT AVG(ID), COMPUTER FROM MARKS GROUP BY COMPUTER; 

SELECT MIN(ID), CHEMISTRY FROM MARKS GROUP BY CHEMISTRY;

SELECT MAX(ID), MATHS FROM MARKS GROUP BY MATHS;

-- HAVING CLAUSE
SELECT COUNT(ID), PYHSICS FROM MARKS GROUP BY PYHSICS HAVING PYHSICS<='60';

SELECT LEFT(COMPUTER,1) AS MARKS FROM MARKS ;

SELECT COUNT(PINCODE) FROM STUDENT;

SELECT * FROM STUDENT WHERE LOCATION='BANGLORE';

SELECT * FROM STUDENT WHERE NOT LOCATION='BANGLORE';

SELECT COMPUTER FROM MARKS WHERE COMPUTER between 70 AND 100;

SELECT PYHSICS FROM MARKS WHERE PYHSICS between 50 AND 60;

SELECT * FROM STUDENT WHERE ID IN (1,5,8);

SELECT * FROM STUDENT WHERE ID NOT IN (1,5,8); 

SELECT * FROM STUDENT WHERE ID='5';

SELECT * FROM STUDENT WHERE PINCODE='560064';

SELECT COUNT(PINCODE) FROM STUDENT;

SELECT distinct PINCODE FROM STUDENT; 

SELECT  ID,FIRSTNAME FROM STUDENT UNION ALL SELECT ID, COMPUTER FROM MARKS; 

SELECT STUDENT.ID, STUDENT.FIRSTNAME, MARKS.COMPUTER FROM STUDENT RIGHT JOIN MARKS ON STUDENT.ID=MARKS.ID;

SELECT STUDENT.ID, STUDENT.FIRSTNAME, MARKS.CHEMISTRY FROM STUDENT LEFT JOIN MARKS ON STUDENT.ID=MARKS.ID;

SELECT STUDENT.ID, STUDENT.FIRSTNAME, STUDENT.PINCODE, MARKS.COMPUTER FROM STUDENT RIGHT JOIN MARKS ON STUDENT.ID=MARKS.ID;

SELECT STUDENT.ID,STUDENT.FIRSTNAME, MARKS.PYHSICS, MARKS.CHEMISTRY, MARKS.MATHS, MARKS.COMPUTER FROM STUDENT LEFT JOIN MARKS ON STUDENT.ID=MARKS.ID;

SELECT STUDENT.ID,STUDENT.FIRSTNAME, MARKS.PYHSICS, MARKS.CHEMISTRY, MARKS.MATHS, MARKS.COMPUTER FROM STUDENT CROSS JOIN MARKS ON STUDENT.ID=MARKS.ID;




