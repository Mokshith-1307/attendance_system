CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Branch VARCHAR(50),
    Section VARCHAR(10)
);

CREATE TABLE Faculty (
    Faculty_ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE Subject (
    Subject_ID INT PRIMARY KEY,
    Subject_Name VARCHAR(50),
    Faculty_ID INT,
    FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
);

CREATE TABLE Attendance (
    Attendance_ID INT PRIMARY KEY,
    Student_ID INT,
    Subject_ID INT,
    Date DATE,
    Status VARCHAR(10) CHECK (Status IN ('Present','Absent')),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Subject_ID) REFERENCES Subject(Subject_ID)
);

INSERT INTO Faculty VALUES (201, 'Dr. Rao');
INSERT INTO Subject VALUES (301, 'DBMS', 201);
INSERT INTO Student VALUES (101, 'Ramesh', 'CSE', 'A');
INSERT INTO Attendance VALUES (1, 101, 301, '2026-04-01', 'Present');
