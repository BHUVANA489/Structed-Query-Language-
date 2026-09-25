USE cdg_hyd_jfs_058;
CREATE TABLE students1 (
    student_id INT NOT NULL,
    admission_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE NOT NULL,
    program_name VARCHAR(100) NOT NULL,
    admission_date DATE NOT NULL,
    cgpa DECIMAL(4, 2) NOT NULL,
    student_status VARCHAR(15) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT `uq_admission_number` UNIQUE (admission_number),
	CONSTRAINT `uq_email` UNIQUE (email),
	CONSTRAINT `chk_cgpa` CHECK (cgpa BETWEEN 0.00 AND 10.00)
);
SELECT * FROM Students1;
INSERT INTO students1
(
    student_id,
    admission_number,
    first_name,
    last_name,
    email,
    phone,
    date_of_birth,
    program_name,
    admission_date,
    cgpa,
    student_status
)
VALUES
(2, 'ADM002', 'Rahul', 'Kumar', 'rahul@gmail.com', '9876543211',
 '2003-07-20', 'Information Technology', '2022-08-01', 8.20, 'Active'),

(3, 'ADM003', 'Priya', 'Sharma', 'priya@gmail.com', '9876543212',
 '2004-01-10', 'Computer Science', '2022-08-01', 9.10, 'Active'),

(4, 'ADM004', 'Arjun', 'Reddy', 'arjun@gmail.com', '9876543213',
 '2003-11-25', 'Electronics', '2022-08-01', 7.85, 'Active');
 
