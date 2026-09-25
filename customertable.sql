USE cdg_hyd_jfs_058;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_code VARCHAR(12) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    phone VARCHAR(15) UNIQUE,
    date_of_birth DATE,
    city VARCHAR(80) NOT NULL,
    state VARCHAR(80) NOT NULL,
    postal_code VARCHAR(12) NOT NULL,
    customer_type VARCHAR(15) NOT NULL DEFAULT 'REGULAR',
    credit_limit DECIMAL(12,2) NOT NULL DEFAULT 0.00,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CHECK (customer_type IN ('REGULAR', 'PREMIUM', 'CORPORATE')),
    CHECK (credit_limit >= 0)
);

-- Customer 1: phone is NULL
INSERT INTO customers
(customer_code, first_name, last_name, email, phone, date_of_birth,
 city, state, postal_code, customer_type, credit_limit, is_active)
VALUES
('CUST001', 'Gagan', 'Chandra', 'gagan1@example.com', NULL, '2002-05-10',
 'Rajahmundry', 'Andhra Pradesh', '533101', 'REGULAR', 0.00, TRUE);

-- Customer 2: phone is also NULL (should be accepted)
INSERT INTO customers
(customer_code, first_name, last_name, email, phone, date_of_birth,
 city, state, postal_code, customer_type, credit_limit, is_active)
VALUES
('CUST002', 'Rahul', 'Kumar', 'rahul@example.com', NULL, '2001-08-15',
 'Hyderabad', 'Telangana', '500001', 'REGULAR', 1000.00, TRUE);

-- Customer 3: phone number
INSERT INTO customers
(customer_code, first_name, last_name, email, phone, date_of_birth,
 city, state, postal_code, customer_type, credit_limit, is_active)
VALUES
('CUST003', 'Arjun', 'Reddy', 'arjun@example.com', '9876543210', NULL,
 'Vijayawada', 'Andhra Pradesh', '520001', 'PREMIUM', 5000.00, TRUE);

-- Customer 4: repeated non-NULL phone (should FAIL)
INSERT INTO customers
(customer_code, first_name, last_name, email, phone, date_of_birth,
 city, state, postal_code, customer_type, credit_limit, is_active)
VALUES
('CUST004', 'Suresh', 'Rao', 'suresh@example.com', '9877543210', NULL,
 'Guntur', 'Andhra Pradesh', '522001', 'REGULAR', 0.00, TRUE);

SELECT * FROM customers;
