USE cdg_hyd_jfs_058;

SELECT * FROM patients;

INSERT INTO patients 
(patient_number, first_name, last_name, date_of_birth, biological_sex, email, blood_group, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES 
('PT27001', 'Manya', 'Sharma', '1997-07-18', 'FEMALE', 'manya.sharma@example.test', 'B+', '9988703001', 'Arjun Sharma', '9988713001', 'Dust', 'ACTIVE');


INSERT INTO patients 
(patient_number, first_name, last_name, date_of_birth, biological_sex, email, blood_group, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES 
('PT27002', 'Aditya', 'Verma', '1986-10-09', 'MALE', NULL, 'A+', '9988703002', 'Priya Verma', '9988713002', NULL, 'ACTIVE');


INSERT INTO patients 
(patient_number, first_name, last_name, date_of_birth, biological_sex, email, blood_group, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES 
('PT27003', 'Riya', 'Menon', '2000-04-25', 'NOT_DISCLOSED', 'riya.menon@example.test', 'O-', '9988703003', 'Anil Menon', '9988713003', 'Pollen', 'ACTIVE'),
('PT27004', 'Zain', 'Khan', '1978-06-14', 'INTERSEX', NULL, 'A-', '9988703004', 'Farah Khan', '9988713004', NULL, 'INACTIVE'),
('PT27005', 'Siddharth', 'Rao', '1989-12-02', 'MALE', 'siddharth.rao@example.test', 'AB-', '9988703005', 'Meena Rao', '9988713005', 'Gluten', 'ACTIVE');


-- blood group Z+
INSERT INTO patients 
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, email, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES 
('PT27006', 'Nikhil', 'Patel', '2003-09-11', 'MALE', 'Z+', 'nikhil.patel@example.test', '9988703006', 'Kavya Patel', '9988713006', NULL, 'INACTIVE');


-- biological sex UNKNOWN
INSERT INTO patients 
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, email, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES 
('PT27007', 'Pooja', 'Iyer', '1967-03-29', 'UNKNOWN', 'B-', 'pooja.iyer@example.test', '9988703007', 'Rahul Iyer', '9988713007', NULL, 'INACTIVE');


-- duplicate patient id
INSERT INTO patients 
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, email, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES 
('PT27002', 'Varun', 'Reddy', '1988-05-17', 'MALE', 'O+', 'varun.reddy@example.test', '9988703008', 'Kavitha Reddy', '9988713008', 'Milk', 'ACTIVE');


UPDATE patients 
SET allergies = 'Latex' 
WHERE patient_number = 'PT27002';


UPDATE patients 
SET email = 'aditya.verma@example.test' 
WHERE patient_number = 'PT27002';


UPDATE patients 
SET phone = 9988703991 
WHERE patient_number = 'PT27001';


UPDATE patients 
SET blood_group = 'B+' 
WHERE patient_number = 'PT27005';


-- blood group C+
UPDATE patients 
SET blood_group = 'C+' 
WHERE patient_number = 'PT27003';


SELECT * FROM patients 
WHERE patient_status = 'INACTIVE';


DELETE FROM patients 
WHERE patient_number = 'PT27004';


INSERT INTO patients 
(patient_number, first_name, last_name, date_of_birth, biological_sex, blood_group, email, phone, emergency_contact_name, emergency_contact_phone, allergies, patient_status) 
VALUES 
('PT-TEMP-02', 'Rohit', 'Mehta', '1995-11-08', 'MALE', 'AB+', 'rohit.mehta@example.test', '9988703009', 'Sneha Mehta', '9988713009', 'Pollen', 'ACTIVE');


DELETE FROM patients 
WHERE patient_number = 'PT-TEMP-02';