REM   Script: sessionn
REM   DBMS


CREATE TABLE Course ( 
    Deptno NUMBER(2) PRIMARY KEY, 
    Dname VARCHAR2(20), 
    Location VARCHAR2(10) 
);

CREATE TABLE Student ( 
    StudentId NUMBER(4) PRIMARY KEY, 
    Student_name VARCHAR2(40) NOT NULL, 
    Address1 VARCHAR2(300), 
    Gender VARCHAR2(15), 
    Course VARCHAR2(8), 
    Deptno NUMBER(2), 
    CONSTRAINT fk_dept FOREIGN KEY (Deptno) REFERENCES Course(Deptno) 
);

INSERT INTO Course (Deptno, Dname, Location)  
VALUES (10, 'Computer Science', 'Delhi');

INSERT INTO Course (Deptno, Dname, Location)  
VALUES (20, 'Electronics', 'Mumbai');

INSERT INTO Course (Deptno, Dname, Location)  
VALUES (30, 'Mechanical', 'Agra');

INSERT INTO Course (Deptno, Dname, Location)  
VALUES (40, 'Civil Engineering', 'Goa');

INSERT INTO Course (Deptno, Dname, Location)  
VALUES (50, 'Electrical', 'Leh');

INSERT INTO Student (StudentId, Student_name, Address1, Gender, Course, Deptno) 
VALUES (1002, 'Seeta', '456 South Delhi St', 'Female', 'BCA', 20);

INSERT INTO Student (StudentId, Student_name, Address1, Gender, Course, Deptno) 
VALUES (1003, 'John', '789 Delhi St', 'Male', 'MCA', 10);

INSERT INTO Student (StudentId, Student_name, Address1, Gender, Course, Deptno) 
VALUES (1004, 'MOhan', '321 North Delhi St', 'Female', 'BCA', 40);

INSERT INTO Student (StudentId, Student_name, Address1, Gender, Course, Deptno) 
VALUES (1005, 'Sonu', '654 South Delhi St', 'Male', 'MCA', 30);

SELECT * FROM Student;

SELECT StudentId, Course FROM Student;

SELECT Dname, Location FROM Course;

SELECT * FROM Student WHERE Course = 'MCA';

SELECT Student_name FROM Student  
WHERE Deptno NOT IN (10, 40);

SELECT Student_name FROM Student  
WHERE StudentId IN (7369, 7777, 2233);

SELECT Student_name FROM Student  
WHERE LOWER(Student_name) LIKE 's%';

SELECT Student_name FROM Student  
WHERE SUBSTR(Student_name, 2, 1) = 'k';

SELECT * FROM Student  
WHERE Deptno IS NULL;

SELECT * FROM Student  
ORDER BY Course ASC;

SELECT COUNT(*) AS BCA_Student_Count FROM Student  
WHERE Course = 'BCA';

SELECT COUNT(*) AS Total_Students FROM Student;

SELECT * FROM Student  
WHERE Deptno IN (1, 2);

SELECT * FROM Student  
ORDER BY Course;

SELECT Student_name FROM Student  
ORDER BY Student_name;

