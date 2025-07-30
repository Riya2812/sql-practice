--  1. Create or Extend Tables
-- Sample: Add Instructors
CREATE TABLE Instructors (
  instructor_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE
);

-- 2. INSERT Sample Data
-- Students
INSERT INTO Students (student_id, name, email, age) VALUES
(1, 'Aditi Sharma', 'aditi@example.com', 20),
(2, 'Rahul Verma', 'rahul@example.com', 21),
(3, 'Sneha Patel', 'sneha@example.com', 22),
(4, 'Vikram Joshi', 'vikram@example.com', 23),
(5, 'Ishita Roy', 'ishita@example.com', 20);

-- Courses
INSERT INTO Courses (course_id, course_name, credits) VALUES
(101, 'Database Systems', 4),
(102, 'Operating Systems', 3),
(103, 'Data Structures', 4),
(104, 'Computer Networks', 3);

-- Instructors
INSERT INTO Instructors (instructor_id, name, email) VALUES
(1, 'Dr. Ramesh Iyer', 'ramesh.iyer@example.com'),
(2, 'Prof. Neha Kapoor', 'neha.kapoor@example.com'),
(3, 'Dr. Anil Saxena', 'anil.saxena@example.com');

-- Enrollment
INSERT INTO Enrollment (enrollment_id, student_id, course_id, enrollment_date) VALUES
(1, 1, 101, '2024-06-01'),
(2, 1, 102, '2024-06-02'),
(3, 2, 101, '2024-06-01'),
(4, 3, 103, '2024-06-03'),
(5, 4, 104, '2024-06-05'),
(6, 5, 102, '2024-06-07');

-- Grades
INSERT INTO Grades (grade_id, enrollment_id, grade) VALUES
(1, 1, 85),
(2, 2, 92),
(3, 3, 78),
(4, 4, 88),
(5, 6, 95);

-- 3. JOIN Queries
-- Show student name, course name, and grade
SELECT s.name, c.course_name, g.grade
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Grades g ON g.enrollment_id = e.enrollment_id;

-- 4. Views
CREATE VIEW StudentPerformance AS
SELECT s.name, c.course_name, g.grade
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Grades g ON g.enrollment_id = e.enrollment_id;

--  5. Aggregate Queries
SELECT course_id, AVG(grade) AS avg_grade
FROM Grades g
JOIN Enrollment e ON g.enrollment_id = e.enrollment_id
GROUP BY course_id;
