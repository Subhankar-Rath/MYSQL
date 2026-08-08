CREATE DATABASE clg;

USE clg;

CREATE TABLE student(
id INT AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(50),
PRIMARY KEY(id)
);

INSERT INTO student(name,marks,grade,city) VALUES ("anil",78,"C","Pune"),
("bhumika",93,"A","mumbai"),
("chetan",85,"B","mumbai"),
("dhruv",96,"A","delhi"),
("emanuel",12,"F","delhi"),
("farah",82,"B","delhi");

SELECT * FROM student;

SELECT marks,name FROM student;

SELECT city,id FROM student;

SELECT DISTINCT city FROM student;

SELECT DISTINCT city,id FROM student;

CREATE TABLE student1 (
    id INT AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY(id)
) AUTO_INCREMENT = 1001;

INSERT INTO student1(name) VALUES ("subhankar"),("jyoti");

SELECT * FROM student;


SELECT * FROM student WHERE marks>80;

SELECT * FROM student WHERE marks>80 AND city="Mumbai";

SELECT * FROM student WHERE grade='c';
SELECT * FROM student WHERE grade<'c';
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN("mumbai","bbsr");
SELECT * FROM student WHERE city NOT IN("mumbai","bbsr");
SELECT * FROM student WHERE marks>70 LIMIT 3;

SELECT * FROM student ORDER BY CITY ASC;
SELECT * FROM student  ORDER BY marks DESC LIMIT 3;

SELECT MAX(MARKS) FROM STUDENT;
SELECT MIN(MARKS) FROM STUDENT;
SELECT AVG(MARKS) FROM STUDENT;
SELECT COUNT(ID) FROM STUDENT;
SELECT SUM(ID) FROM STUDENT;

SELECT city,count(name) FROM student GROUP BY city;
SELECT city,name,count(marks) FROM student GROUP BY name,city;
SELECT city,AVG(MARKS) FROM student GROUP BY city;

SELECT city,AVG(marks) FROM student GROUP BY city ORDER BY city;

SELECT grade,count(id) FROM student GROUP BY grade;

SELECT COUNT(name),city FROM student GROUP BY city HAVING max(marks)>90;

SELECT city FROM student 
WHERE grade="A" 
GROUP BY city
HAVING max(marks)>90
ORDER BY city ASC;


UPDATE STUDENT 
SET GRADE="O"
WHERE GRADE="A";

SET SQL_SAFE_UPDATES=0;

UPDATE STUDENT 
SET MARKS=82
WHERE MARKS=12;

UPDATE STUDENT 
SET GRADE="B"
WHERE MARKS BETWEEN 80 AND 90;

SELECT * FROM STUDENT;

/* to give 1 mark grace */

UPDATE STUDENT
SET MARKS=MARKS+1;

DELETE FROM STUDENT1;

DELETE FROM STUDENT 
WHERE NAME="EMANUEL";

SELECT NAME, MARKS 
FROM STUDENT 
WHERE MARKS > (SELECT AVG(MARKS) FROM STUDENT);

SELECT ID,NAME FROM STUDENT WHERE MOD(ID,2)=0;

CREATE VIEW view1 AS 
SELECT ID,NAME,MARKS FROM STUDENT;

select * from view1;

drop  view view1;
