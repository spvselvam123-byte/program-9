USE CollegeDB;

CREATE TABLE department70(
    DepartmentID INT,
    DepartmentName VARCHAR(30)
);

INSERT INTO department70 VALUES
(101,'Computer Science'),
(102,'Mathematics'),
(103,'Physics');

CREATE TABLE student70(
    StudentID INT,
    StudentName VARCHAR(20),
    DepartmentID INT
);

INSERT INTO student70 VALUES
(1001,'Arun',101),
(1002,'Divya',102),
(1003,'Karthik',101),
(1004,'Nisha',103);

SELECT student70.StudentName,
       department70.DepartmentName
FROM student70
INNER JOIN department70
    ON student70.DepartmentID = department70.DepartmentID;
