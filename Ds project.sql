CREATE DATABASE student_management;
USE student_management;

CREATE TABLE student_management.students
(
    id INT PRIMARY KEY,
    studentname VARCHAR(50),
    department VARCHAR(50),
    semester INT,
    marks INT
);

INSERT INTO student_management.students (id, studentname, department, semester, marks)
VALUES
(1, 'Anika', 'CSE', 4, 87),
(2, 'Rafi', 'CSE', 1, 72),
(3, 'Tasnim', 'EEE', 3, 90),
(4, 'Imran', 'CSE', 4, 83),
(5, 'Lamia', 'BBA', 2, 79),
(6, 'Shuvo', 'CSE', 1, 92),
(7, 'Mehzabin', 'EEE', 4, 68),
(8, 'Karim', 'BBA', 3, 85),
(9, 'Priya', 'CSE', 6, 96),
(10, 'Sohan', 'EEE', 1, 74);

SELECT * FROM student_management.students;

SELECT * FROM student_management.students
WHERE studentname = 'Anika';

UPDATE student_management.students
SET marks = 93
WHERE id = 1;

SELECT * FROM student_management.students;

DELETE FROM student_management.students
WHERE id = 10;

SELECT * FROM student_management.students;

SELECT COUNT(*) AS total_students
FROM student_management.students;

SELECT AVG(marks) AS average_marks
FROM student_management.students;

SELECT MAX(marks) AS highest_mark,
       MIN(marks) AS lowest_marks
FROM student_management.students;

SELECT department, COUNT(*) AS total_students
FROM student_management.students
GROUP BY department;

SELECT * FROM student_management.students;