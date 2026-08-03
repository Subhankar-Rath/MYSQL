CREATE DATABASE ex;

use ex;

CREATE TABLE depart(
departId INT PRIMARY KEY,
departName VARCHAR(50)
);

INSERT INTO depart (departId,departName) VALUES (1,"CSE");

CREATE TABLE emp(
empId INT PRIMARY KEY,
name VARCHAR(50),
departId INT,
FOREIGN KEY(departId) 
REFERENCES depart(departId)
);

INSERT INTO emp VALUES (101,"subhankar",1);

select * from depart;

select * from emp;
