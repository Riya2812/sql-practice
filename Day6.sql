-- Order students by age (youngest first)
SELECT * FROM Students
ORDER BY age ASC;

-- Order students by name (alphabetical)
SELECT * FROM Students
ORDER BY name;

-- Count total number of students
SELECT COUNT(*) AS total_students FROM Students;

-- Find average age of students
SELECT AVG(age) AS avg_age FROM Students;

-- Find total credits offered in all courses
SELECT SUM(credits) AS total_credits FROM Courses;

-- Find max and min credits in course list
SELECT MAX(credits) AS max_credits, MIN(credits) AS min_credits FROM Courses;

-- Group enrollments by course and count how many students per course
SELECT course_id, COUNT(*) AS num_students
FROM Enrollment
GROUP BY course_id;

-- Show only those courses with more than 1 student
SELECT course_id, COUNT(*) AS num_students
FROM Enrollment
GROUP BY course_id
HAVING COUNT(*) > 1;
