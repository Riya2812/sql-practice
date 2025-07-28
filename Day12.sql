-- 1. Create a VIEW
-- A view showing student names and their enrolled courses:
CREATE VIEW StudentCourseView AS
SELECT s.name AS student_name, c.course_name, e.enrollment_date
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;


SELECT * FROM StudentCourseView;

--  2. Create a VIEW with filter
--  A view for students enrolled after ‘2024-06-01’:
CREATE VIEW RecentEnrollments AS
SELECT s.name, c.course_name, e.enrollment_date
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE e.enrollment_date > '2024-06-01';


-- 3. Drop a VIEW
DROP VIEW IF EXISTS StudentCourseView;

-- 4. Create an INDEX
CREATE INDEX idx_student_id
ON Enrollment(student_id);

