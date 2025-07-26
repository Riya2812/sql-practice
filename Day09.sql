--  1. Create a new table with constraints:
CREATE TABLE Instructors (
  instructor_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE
);


-- 2. Add a NOT NULL constraint to an existing column:
ALTER TABLE Students
MODIFY COLUMN name VARCHAR(50) NOT NULL;


-- 3. Add a new column with a constraint:
ALTER TABLE Courses
ADD COLUMN department VARCHAR(50) NOT NULL;


-- 4. Add a FOREIGN KEY constraint to a new table:
CREATE TABLE Grades (
  grade_id INT PRIMARY KEY,
  enrollment_id INT,
  grade CHAR(2),
  FOREIGN KEY (enrollment_id) REFERENCES Enrollment(enrollment_id)
);


--  5. Drop a constraint
ALTER TABLE Courses
DROP COLUMN department;
