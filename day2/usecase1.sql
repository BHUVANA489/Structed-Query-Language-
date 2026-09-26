USE cdg_hyd_jfs_058;

ALTER TABLE students
MODIFY student_id INT NOT NULL AUTO_INCREMENT;

INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU26D001', 'Ishita', 'Reddy', 'ishita.reddy@example.test', 9865402001, '2007-03-12', 'BSc Computer Science', '2026-07-05', 8.25, 'ACTIVE');

INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU26D002', 'Arnav', 'Mehta', 'arnav.mehta@example.test', NULL, '2006-11-21', 'BCom', '2026-07-05', 7.60, 'ACTIVE');

INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU26D003', 'Megha', 'Iyer', 'megha.iyer@example.test', 9865402003, '2007-01-17', 'BA Economics', '2026-07-06', 9.20, 'ACTIVE'),
('STU26D004', 'Ritvik', 'Patel', 'ritvik.patel@example.test', 9865402004, '2006-07-09', 'BSc Mathematics', '2025-07-05', 6.95, 'SUSPENDED'),
('STU26D005', 'Nisha', 'Kapoor', 'nisha.kapoor@example.test', 9865402005, '2005-10-16', 'BA History', '2024-07-05', 5.85, 'DROPPED');

SELECT * FROM students;

UPDATE students
SET cgpa = 8.55
WHERE admission_number = 'STU26D001';

UPDATE students
SET cgpa = cgpa + 0.20
WHERE program_name = 'BSc Computer Science'
AND student_status = 'ACTIVE'
AND cgpa + 0.20 <= 10.00;

UPDATE students
SET student_status = 'ACTIVE'
WHERE admission_number = 'STU26D004';

UPDATE students
SET email = 'megha.updated@example.test'
WHERE admission_number = 'STU26D003';

SELECT * FROM students
WHERE student_status = 'DROPPED';

DELETE FROM students
WHERE student_status = 'DROPPED';

INSERT INTO students(admission_number, first_name, last_name, email, phone, date_of_birth, program_name, admission_date, cgpa, student_status)
VALUES('STU-TEMP-002', 'Karthik', 'Rao', 'karthik.rao@example.test', 9865402000, '2006-10-15', 'BSc Mathematics', '2025-07-05', 8.40, 'TRANSFERRED');

SELECT * FROM students
WHERE admission_number = 'STU-TEMP-002';

DELETE FROM students
WHERE admission_number = 'STU-TEMP-002';

SELECT * FROM students;

