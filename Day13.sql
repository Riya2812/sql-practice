-- 1. Fix a JOIN error
SELECT name, course_name
FROM Students s
JOIN Enrollment e ON s.id = e.student
JOIN Courses c ON c.id = e.cid;

 Fixed:
SELECT s.name, c.course_name
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON c.course_id = e.course_id;


-- 2. Fix GROUP BY error
 Faulty Query:
SELECT name, COUNT(*) FROM Students;
Fixed:
SELECT name, COUNT(*) 
FROM Students
GROUP BY name;


-- 3. Fix syntax error with missing comma
INSERT INTO Courses (course_id, course_name credits)
VALUES (104, 'AI Fundamentals', 3);

INSERT INTO Courses (course_id, course_name, credits)
VALUES (104, 'AI Fundamentals', 3);

--  4. Fix logic error: wrong WHERE clause
SELECT * FROM Students
WHERE email = NULL;

SELECT * FROM Students
WHERE email IS NULL;

