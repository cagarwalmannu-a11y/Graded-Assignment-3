# Campus Connect Database Design

## Database Engine
SQLite 3.45

## Schema Design
The schema consists of three tables: students, courses, and enrollments.

### students

| Column | Type | Description |
| --- | --- | --- |
| student_id | INTEGER | Primary key |
| name | TEXT | Student name |
| email | TEXT | Student email |

### courses

| Column | Type | Description |
| --- | --- | --- |
| course_id | INTEGER | Primary key |
| name | TEXT | Course name |
| credits | INTEGER | Course credits |

### enrollments

| Column | Type | Description |
| --- | --- | --- |
| enrollment_id | INTEGER | Primary key |
| student_id | INTEGER | Foreign key referencing students |
| course_id | INTEGER | Foreign key referencing courses |
| grade | TEXT | Student grade |

## Normalization
Unnormalized schema:

| student_id | name | course_name | credits | grade |
| --- | --- | --- | --- | --- |

1NF: Remove repeating groups (course_name, credits, grade)

| student_id | name | course_id | course_name | credits | grade |
| --- | --- | --- | --- | --- | --- |

2NF: Remove partial dependencies (course_name, credits depend on course_id)

| student_id | name | course_id | grade |
| --- | --- | --- | --- |
| course_id | course_name | credits |

3NF: Remove transitive dependencies (none in this case)

## Indexing
* idx_students_name: speeds up queries filtering by student name
* idx_enrollments_course_id_student_id: speeds up queries joining enrollments and courses

## Transactions and Isolation
* Isolation level: Serializable, to prevent lost updates

## Queries
See queries.sql for example queries.
