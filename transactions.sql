BEGIN;
UPDATE courses SET credits = credits - 1 WHERE course_id = 1;
INSERT INTO enrollments (enrollment_id, student_id, course_id) VALUES (4, 1, 1);
COMMIT;
