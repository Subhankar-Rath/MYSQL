CREATE DATABASE XYZ;

CREATE TABLE XYZ.empinfo(
id INT PRIMARY KEY,
name VARCHAR(50),
salary INT(20)
);

use XYZ;
select *from empinfo;

INSERT INTO empinfo (id,name,salary) VALUES 
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

SELECT * FROM empinfo;