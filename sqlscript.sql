REM   Script: Session 05
REM   Assginment Question

CREATE TABLE Course ( 
    DeptNo NUMBER(2) PRIMARY KEY, 
    Dname VARCHAR2(20), 
    Location VARCHAR2(10) 
);

CREATE TABLE Student ( 
    StudentId NUMBER(4) PRIMARY KEY, 
    StudentName VARCHAR2(40) NOT NULL, 
    Address1 VARCHAR2(300), 
    Gender VARCHAR2(15), 
    Course VARCHAR2(8), 
    Deptno NUMBER(2), 
    FOREIGN KEY (Deptno) REFERENCES Course(DeptNo) 
);

INSERT INTO Course (DeptNo, Dname, Location) VALUES (10, 'Computer Science', 'New York');

INSERT INTO Course (DeptNo, Dname, Location) VALUES (20, 'Mechanical', 'California');

INSERT INTO Course (DeptNo, Dname, Location) VALUES (30, 'Electrical', 'Texas');

INSERT INTO Course (DeptNo, Dname, Location) VALUES (40, 'Civil', 'Florida');

INSERT INTO Course (DeptNo, Dname, Location) VALUES (50, 'MCA', 'Chicago');

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) VALUES (7369, 'John Doe', '123 Elm St, New York', 'Male', 'BCA', 10);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) VALUES (7777, 'Jane Smith', '456 Oak St, California', 'Female', 'MCA', 50);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) VALUES (2233, 'Sam Wilson', '789 Pine St, Texas', 'Male', 'BCA', 20);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) VALUES (1077, 'Alice Brown', '321 Maple St, Florida', 'Female', 'MBA', 40);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) VALUES (1023, 'Bob Johnson', '654 Cedar St, New York', 'Male', 'MCA', 50);

Select * from Student;

SELECT StudentId, Course FROM Student;

SELECT Dname, Location FROM Course;

SELECT * FROM Student 
WHERE Course = 'MCA';

SELECT StudentName FROM Student 
WHERE StudentId IN (7369, 7777, 2233);

SELECT StudentName FROM Student 
WHERE Deptno NOT IN (10, 40);

SELECT StudentName FROM Student 
WHERE StudentName LIKE 'S%';

SELECT StudentName FROM Student 
WHERE StudentName LIKE '_a%';

SELECT * FROM Student 
ORDER BY Course ASC;

SELECT COUNT(*) FROM Student 
WHERE Course = 'BCA';

SELECT DISTINCT StudentName FROM Student 
WHERE Deptno IN (10, 50);

SELECT StudentName FROM Student 
ORDER BY Course;

SELECT StudentName FROM Student 
ORDER BY StudentName;

