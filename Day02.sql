-- INSERT sample data into Students
INSERT INTO Students (student_id, name, email, age) VALUES
(1, 'Aditi Sharma', 'aditi@example.com', 20),
(2, 'Rahul Verma', 'rahul@example.com', 21),
(3, 'Sneha Patel', 'sneha@example.com', 22);

-- INSERT into Courses
INSERT INTO Courses (course_id, course_name, credits) VALUES
(101, 'Database Systems', 4),
(102, 'Operating Systems', 3),
(103, 'Data Structures', 4);

-- INSERT into Enrollment
INSERT INTO Enrollment (enrollment_id, student_id, course_id, enrollment_date) VALUES
(1, 1, 101, '2024-06-01'),
(2, 2, 102, '2024-06-02'),
(3, 3, 103, '2024-06-03');

-- UPDATE student email
UPDATE Students 
SET email = 'aditi_sharma@gmail.com'
WHERE student_id = 1;

-- DELETE an enrollment record
DELETE FROM Enrollment
WHERE enrollment_id = 3;

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollment;
