-- Day 1: CREATE TABLE Practice
CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(100),
  age INT
  );
  
 CREATE TABLE Courses (
   course_id INT PRIMARY KEY,
   course_name VARCHAR(100),
   credits INT
   );
   
  CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
    );


-- Test Queries
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollment;
