INSERT INTO students (student_id, name, email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Doe', 'jane@example.com');

INSERT INTO courses (course_id, name, credits) VALUES
(1, 'Math 101', 3),
(2, 'Science 101', 4);

INSERT INTO enrollments (enrollment_id, student_id, course_id, grade) VALUES
(1, 1, 1, 'A'),
(2, 1, 2, 'B'),
(3, 2, 1, 'C');
