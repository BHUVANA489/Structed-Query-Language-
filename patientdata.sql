USE cdg_hyd_jfs_058;
DROP TABLE IF EXISTS patients;

CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_number VARCHAR(15) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,

    biological_sex ENUM(
        'FEMALE',
        'MALE',
        'INTERSEX',
        'NOT_DISCLOSED'
    ) NOT NULL,

    blood_group ENUM(
        'A+',
        'A-',
        'B+',
        'B-',
        'AB+',
        'AB-',
        'O+',
        'O-'
    ),

    phone VARCHAR(20) NOT NULL,
    email VARCHAR(120),
    emergency_contact_name VARCHAR(100) NOT NULL,
    emergency_contact_phone VARCHAR(15) NOT NULL,
    allergies TEXT,
    patient_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',

    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CHECK (patient_status IN ('ACTIVE', 'INACTIVE', 'DECEASED'))
);

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth,
 biological_sex, blood_group, phone, email,
 emergency_contact_name, emergency_contact_phone,
 allergies, patient_status)
VALUES
('PAT001', 'Alex', 'Kumar', '1995-06-15',
 'MALE', 'O+', '9000000001', 'alex@example.com',
 'Sam Kumar', '9000000002', 'None known', 'ACTIVE');

INSERT INTO patients
(patient_number, first_name, last_name, date_of_birth,
 biological_sex, blood_group, phone, email,
 emergency_contact_name, emergency_contact_phone,
 allergies, patient_status)
VALUES
('PAT002', 'Maya', 'Rao', '1998-11-20',
 'FEMALE', NULL, '9000000003', NULL,
 'Anita Rao', '9000000004', NULL, 'ACTIVE');

SELECT * FROM patients;
s