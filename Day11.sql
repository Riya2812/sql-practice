-- UNION, INTERSECT, EXCEPT

-- 1. UNION
SELECT name AS info FROM Students
UNION
SELECT course_name FROM Courses;

--  2. Simulate INTERSECT
SELECT student_id FROM Students
WHERE student_id IN (
  SELECT student_id FROM Enrollment
);

-- 3. Simulate EXCEPT
SELECT student_id FROM Students
WHERE student_id NOT IN (
  SELECT student_id FROM Enrollment
);

-- using DISTINCT and ORDER BY with UNION
SELECT name FROM Students
UNION
SELECT course_name FROM Courses
ORDER BY name;
-- Note: May need aliasing or subqueries for ordering
