-- Student table
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Marks INT,
    Aadhar BIGINT UNIQUE,
    Address VARCHAR(100)
);
CREATE TABLE Course (
    RollNo INT,
    Course VARCHAR(50),
    Course_Duration VARCHAR(20),
    FOREIGN KEY (RollNo) REFERENCES Student(RollNo)
);
-- Sample Students
INSERT INTO Student VALUES 
(101, 'Riya', 85, 123, 'Delhi'),
(102, 'Rohan', 25, 234, 'Mumbai'),
(103, 'Neha', 70, 345, 'Chennai'),
(104, 'Rakesh', 40, 456, 'Bangalore'),
(105, 'Anita', 30, 567, 'Kolkata');

-- Sample Courses
INSERT INTO Course VALUES
(101, 'BCA', '3 years'),
(102, 'BBA', '3 years'),
(103, 'BCA', '3 years'),
(104, 'B.Tech', '4 years'),
(105, 'BCA', '3 years');
SELECT AVG(Marks) AS Average_Marks FROM Student;
SELECT Name FROM Student ORDER BY Name ASC;
SELECT RollNo, Name FROM Student WHERE Marks < 30;
SELECT RollNo FROM Student WHERE Name LIKE 'R%';
SELECT RollNo FROM Course WHERE Course = 'BCA';
SELECT * FROM Student;
SELECT * FROM Course;





