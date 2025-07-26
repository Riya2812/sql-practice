
-- Day 8: Subqueries (Nested Queries)

-- Subquery in WHERE clause
-- Get the students enrolled in a course named " Database Systems "
SELECT name
FROM Students
WHERE student_id IN (
  SELECT student_id
  FROM Enrollment
  WHERE course_id = (
    SELECT course_id
    FROM Courses 
    WHERE course_name = "Database Systems")
  );
  
-- Subquery in FROM clause ( Derived Table)
-- Find the average age of students enrolled in each course
SELECT course_id ,AVG(age) AS avg_student_age 
FROM (
  SELECT s.age, e.course_id
  FROM Students AS s
  INNER JOIN Enrollment AS e 
  ON s.student_id = e.student_id) AS SUB
 GROUP BY course_id ; 
 
 -- Using ANY/ALL with subqueries
 -- Get students older than any student in the course with ID 101
 SELECT * FROM Students
 WHERE age > ANY(
   SELECT s.age
   FROM Students AS s
   JOIN Enrollment e ON s.student_id = e.student_id
   WHERE e.course_id = 101
   );
   
