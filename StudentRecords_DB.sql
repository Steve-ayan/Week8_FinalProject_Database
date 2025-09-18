CREATE DATABASE StudentRecords_DB;
USE StudentRecords_DB;

CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    date_of_birth DATE
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) UNIQUE NOT NULL,
    credits INT,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    UNIQUE (student_id, course_id)
);

INSERT INTO Instructors (first_name, last_name, department) VALUES
('Jane', 'Doe', 'Civil Engineering'),
('John', 'Smith', 'Computer Science');

INSERT INTO Students (first_name, last_name, email, date_of_birth) VALUES
('Alex', 'Johnson', 'alex.j@example.com', '2000-05-15'),
('Maria', 'Garcia', 'maria.g@example.com', '2001-09-20'),
('Samuel', 'Lee', 'samuel.l@example.com', '2000-11-30');

INSERT INTO Courses (course_name, course_code, credits, instructor_id) VALUES
('Structural Analysis', 'CE301', 4, 1),
('Database Management', 'CS205', 3, 2),
('Geotechnical Engineering', 'CE410', 4, 1);

INSERT INTO Enrollment (student_id, course_id, enrollment_date, grade) VALUES
(1, 1, '2025-09-01', 'A'),
(2, 2, '2025-09-01', 'B+'),
(3, 1, '2025-09-02', 'A-'),
(1, 3, '2025-09-03', NULL);