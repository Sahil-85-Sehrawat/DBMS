REM   Script: Session 04
REM   Class

CREATE TABLE Student ( 
    StudentId NUMBER (4) PRIMARY KEY, 
    StudentName VARCHAR(40) NOT NULL, 
    Address1 VARCHAR2(300), 
    Gender VARCHAR2(15), 
    Course VARCHAR2(8) 
);

CREATE TABLE Course ( 
    CourseID NUMBER(2)PRIMARY KEY, 
    DeptNo NUMBER(2) , 
    Dname VARCHAR2(20), 
    Location VARCHAR2(10) 
);

INSERT INTO Student (StudentID, StudentName,Address1,Gender,Course) VALUES (1001,'JOHN','123 Elm St','Male','MCA');

INSERT INTO Student (StudentID, StudentName,Address1,Gender,Course) VALUES (1002, 'meet', '456 Delhi St', 'Female', 'MBA');

INSERT INTO Student (StudentID, StudentName,Address1,Gender,Course) VALUES (1003, 'Mike', '789 Indra St', 'Male', 'MCA');

INSERT INTO Student (StudentID, StudentName,Address1,Gender,Course) VALUES (1004, 'Manik', '789 South St', 'Male', 'MCA');

INSERT INTO Student (StudentID, StudentName,Address1,Gender,Course) VALUES (1005, 'luv', '789 North St', 'Male', 'MBA');

INSERT INTO Course (CourseID, DeptNo, Dname, Location) VALUES 
(1, 10, 'MCA', 'Block A');

INSERT INTO Course (CourseID, DeptNo, Dname, Location) VALUES 
(2, 20, 'MBA', 'Block B');

INSERT INTO Course (CourseID, DeptNo, Dname, Location) VALUES 
(3, 30, 'BCA', 'Block C');

INSERT INTO Course (CourseID, DeptNo, Dname, Location) VALUES 
(4, 40, 'BCA', 'Block D');

INSERT INTO Course (CourseID, DeptNo, Dname, Location) VALUES 
(5, 50, 'MSC', 'Block E');

SELECT * FROM Student;

SELECT StudentId, Course FROM Student;

SELECT Dname, Location FROM Course;

SELECT * FROM Student WHERE Course = 'MCA';

SELECT StudentName FROM Student  
WHERE StudentId IN (7369, 7777, 2233);

SELECT s.StudentName FROM Student s 
JOIN Course c ON s.Course = c.Dname 
WHERE c.DeptNo NOT IN (10, 40);

SELECT StudentName FROM Student  
WHERE StudentName LIKE 'S%';

