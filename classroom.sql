CREATE DATABASE college;
USE college;	
CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);


CREATE TABLE college.student1(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
DROP TABLE student1;
use college;
INSERT INTO student VALUES(1,"subhankar",21);
INSERT INTO student VALUES(2,"Jyoti",21);

SELECT *FROM student;