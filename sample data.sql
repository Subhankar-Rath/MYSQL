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

SELECT * FROM student1;

