use students_data;
select * from students;
select * from habits;
select * from performance;
alter table students add primary key(student_id);
ALTER TABLE students ADD email VARCHAR(100);
UPDATE students SET major = 'Psychology' WHERE student_id = 100002;
set sql_safe_updates=0;
DELETE FROM students WHERE age > 30;
SELECT * FROM students WHERE major = 'Computer Science';
SELECT gender, AVG(age) AS avg_age FROM students GROUP BY gender;
SELECT DISTINCT major FROM students;
SELECT s.student_id, s.gender, p.exam_score FROM students s JOIN performance p ON s.student_id = p.student_id;
SELECT s.student_id, s.major, h.study_hours_per_day FROM students s LEFT JOIN habits h ON s.student_id = h.student_id;
SELECT major, COUNT(*) AS student_count FROM students GROUP BY major;
SELECT study_environment, MAX(screen_time) AS max_screen_time FROM habits GROUP BY study_environment;
SELECT * FROM students WHERE age > (SELECT AVG(age) FROM students);
SELECT * FROM performance WHERE exam_score = (SELECT MAX(exam_score) FROM performance);
ALTER TABLE students ADD CONSTRAINT unique_email UNIQUE (email);
ALTER TABLE performance ADD CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES students(student_id);
CREATE VIEW business_females as select * FROM students WHERE gender = 'Female' AND major = 'Business';
BEGIN;
INSERT INTO students (student_id, age, gender, major) VALUES (100011, 24, 'Male', 'Arts');
INSERT INTO performance (student_id, exam_score) VALUES (100011, 85);
COMMIT;
SELECT * FROM performance ORDER BY exam_score desc;
SELECT * FROM habits ORDER BY study_hours_per_day asc;
SELECT student_id, screen_time FROM habits ORDER BY screen_time DESC, student_id;
SELECT student_id, UPPER(study_environment) AS upper_env FROM habits;
SELECT * FROM habits WHERE LOWER(study_environment) LIKE '%quiet%';
SELECT student_id, SUBSTRING(study_environment FROM 1 FOR 3) AS env_prefix FROM habits;
SELECT student_id || ' scored ' || exam_score || ' marks' AS result_summary FROM performance;
SELECT student_id, REPLACE(study_environment, 'noisy', 'quiet') AS improved_env FROM habits;






