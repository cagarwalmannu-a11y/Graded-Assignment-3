-- Students enrolled in course 1
SELECT * FROM students WHERE student_id IN (SELECT student_id FROM enrollments WHERE course_id = 1);

-- Courses with credits between 3 and 4
SELECT * FROM courses WHERE credits BETWEEN 3 AND 4;

-- Students with no grade
SELECT * FROM enrollments WHERE grade IS NULL;

-- Courses with more than 2 enrollments
SELECT course_id, COUNT(*) FROM enrollments GROUP BY course_id HAVING COUNT(*) > 2;

-- INNER JOIN
SELECT * FROM students INNER JOIN enrollments ON students.student_id = enrollments.student_id;

-- LEFT JOIN
SELECT * FROM students LEFT JOIN enrollments ON students.student_id = enrollments.student_id;

-- RIGHT JOIN
SELECT * FROM students RIGHT JOIN enrollments ON students.student_id = enrollments.student_id;

-- Scalar subquery
SELECT (SELECT COUNT(*) FROM enrollments WHERE course_id = 1) AS count;

-- Correlated subquery
SELECT * FROM students WHERE EXISTS (SELECT 1 FROM enrollments WHERE enrollments.student_id = students.student_id);

-- EXISTS
SELECT * FROM students WHERE EXISTS (SELECT 1 FROM enrollments WHERE enrollments.student_id = students.student_id);

-- Set operation
SELECT student_id FROM students UNION SELECT student_id FROM enrollments;

-- Window function
SELECT student_id, ROW_NUMBER() OVER (ORDER BY student_id) AS row_num FROM students;
