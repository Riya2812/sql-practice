
-- Day 3: More INSERT, UPDATE, DELETE Practice

-- Add new students
INSERT INTO Students (student_id, name, email,age) VALUES 
(4, 'Karan Mehta', 'karan@examplee.com', 23),
(5, 'Priya Nair', 'priya@example.com', 21);

-- Add new courses
INSERt INTO Courses (course_id, course_name, credits) VALUES
(104, 'Computer Networks', 3),
(105, 'Machine Learning', 4);

-- Enroll new students
INSERT INTO Enrollment (enrollment_id, student_id, course_id, enrollment_date) VALUES
(4, 4, 104, '2024-06-05'),
(5, 5, 105, '2024-06-06');

-- Update a student name
UPDATE Students 
SET name = 'Priya R. Nair'
WHERE student_id = 5;


-- Update course credits
UPDATE Courses 
SET credits = 5
WHERE course_id = 104;

-- Delete a student ( make sure they have no enrollment first)
DELETE FROM Enrollment
WHERE student_id = 2;

DELETE FROM Students
WHERE STUDENT_ID = 2;

-- Final View
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollment;