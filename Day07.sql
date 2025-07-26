-- JOINs ( INNER, LEFT, RIGHT )

-- INNER JOIN : Return records with matching values in both tables
 SELECT s.name AS Student_name, c.course_name AS Course
 FROM Students AS s
 INNER JOIN Enrollment AS e ON s.student_id = e.student_id 
 INNER JOIN Courses AS c ON e.course_id = c.course_id;

-- LEFT JOIN : Return all records from the left table, and matched ones from the right
 SELECT s.name AS Student_name, c.course_name AS Course
 FROM Students AS s
 LEFT JOIN Enrollment AS e ON s.student_id = e.student_id 
 LEFT JOIN Courses AS c ON e.course_id = c.course_id;
 
 -- RIGHT JOIN : Return all recors from the right table, and matcheed ones from the left
SELECT S.name, C.course_name
FROM Students S
RIGHT JOIN Enrollment E ON S.student_id = E.student_id
RIGHT JOIN Courses C ON E.course_id = C.course_id;

-- JOIN with WHERE + ALIAS + FILTERING
SELECT S.name AS Student_Name, C.course_name AS Course
FROM Students S
INNER JOIN Enrollment E ON S.student_id = E.student_id
INNER JOIN Courses C ON E.course_id = C.course_id
WHERE C.course_name = 'Database Systems';


-- Join with GROUP BY
SELECT C.course_name, COUNT(S.student_id) AS Total_Students
FROM Courses C
LEFT JOIN Enrollment E ON C.course_id = E.course_id
LEFT JOIN Students S ON E.student_id = S.student_id
GROUP BY C.course_name;
