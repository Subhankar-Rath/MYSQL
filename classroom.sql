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

DROP DATABASE IF EXISTS std;
CREATE DATABASE IF NOT EXISTS college;

SHOW DATABASES;
SHOW TABLES;

DROP TABLE student;

CREATE TABLE student(
roll INT PRIMARY KEY,
name VARCHAR(50)
);

SELECT * FROM student;

INSERT INTO student (roll,name) 
VALUES (101,"subhankar"),
		(102,"jyoti");
        
INSERT INTO student VALUES(103,"pratik");