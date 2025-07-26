-- Students older than 21
SELECT * FROM Students
WHERE age > 21;

-- Courses with 3 or 4 credits
SELECT * FROM Courses
WHERE credits IN (3, 4);

-- Students whose names start with 'A'
SELECT * FROM Students
WHERE name LIKE 'A%';

-- Courses with 'Systems' in their name
SELECT * FROM Courses
WHERE course_name LIKE '%Systems%';

-- Students between ages 20 and 22
SELECT * FROM Students
WHERE age BETWEEN 20 AND 22;

-- Students with non-null emails
SELECT * FROM Students
WHERE email IS NOT NULL;

-- Students named 'Aditi Sharma' OR under age 21
SELECT * FROM Students
WHERE name = 'Aditi Sharma' OR age < 21;

-- Students older than 20 AND with emails ending in '@gmail.com'
SELECT * FROM Students
WHERE age > 20 AND email LIKE '%@gmail.com';
