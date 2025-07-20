-- Day 4: SELECT basic practice

-- SELECT specific columns
SELECT name, email FROM Students;

-- SELECT all columns
SELECT * FROM Courses;

-- WHERE Clause
SELECT * FROM Students WHERE age>20;

-- DISTINCT Values
SELECT DISTINCT credits FROM Courses;

-- LIMIT result
SELECT * FROM Students LIMIT 2;

-- Filtering : Get students whose name starts with 'S'
SELECT * FROM Students WHERE name LIKE 'S%';
