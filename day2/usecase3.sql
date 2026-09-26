USE cdg_hyd_jfs_058;

SELECT * FROM customers;

INSERT INTO customers 
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES 
('CUST27001', 'Kavya', 'Nair', 'kavya.nair@example.test', 9988701001, '1996-06-15', 'Chennai', 'Tamil Nadu', '600001', 'PREMIUM', 85000.00, TRUE);


INSERT INTO customers 
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES 
('CUST27002', 'Vivek', 'Patel', 'vivek.patel@example.test', NULL, NULL, 'Ahmedabad', 'Gujarat', '380001', 'REGULAR', 0.00, TRUE);


INSERT INTO customers 
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES 
('CUST27003', 'Sahana', 'Rao', 'sahana.rao@example.test', 9988701003, '1993-09-21', 'Pune', 'Maharashtra', '411001', 'CORPORATE', 300000.00, TRUE),
('CUST27004', 'Kiran', 'Kumar', 'kiran.kumar@example.test', 9988701004, '1989-03-12', 'Hyderabad', 'Telangana', '500003', 'PREMIUM', 125000.00, TRUE),
('CUST27005', 'Divya', 'Krishnan', 'divya.krishnan@example.test', NULL, NULL, 'Coimbatore', 'Tamil Nadu', '641001', 'REGULAR', 0.00, FALSE);


-- duplicate email
INSERT INTO customers 
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES 
('CUST27006', 'Rahul', 'Verma', 'vivek.patel@example.test', 9988701006, NULL, 'Jaipur', 'Rajasthan', '302001', 'REGULAR', 0.00, TRUE);


-- negative credit limit
INSERT INTO customers 
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES 
('CUST27007', 'Rahul', 'Verma', 'rahul.verma@example.test', 9988701007, NULL, 'Jaipur', 'Rajasthan', '302001', 'REGULAR', -50.00, TRUE);


-- customer type gold
INSERT INTO customers 
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES 
('CUST27008', 'Rahul', 'Verma', 'rahul.gold@example.test', 9988701008, NULL, 'Jaipur', 'Rajasthan', '302001', 'GOLD', 0.00, TRUE);


UPDATE customers 
SET credit_limit = credit_limit * 1.01 
WHERE customer_type = 'PREMIUM';


UPDATE customers 
SET phone = 9988701002 
WHERE customer_code = 'CUST27002';


UPDATE customers 
SET city = 'Madhapur', 
    postal_code = 500081 
WHERE customer_code = 'CUST27004';


UPDATE customers 
SET credit_limit = 325000.00 
WHERE customer_code = 'CUST27003';


UPDATE customers 
SET phone = 9988701003 
WHERE customer_code = 'CUST27002';


SELECT * FROM customers 
WHERE is_active = FALSE;

DELETE FROM customers 
WHERE is_active = FALSE;


INSERT INTO customers 
(customer_code, first_name, last_name, email, phone, date_of_birth, city, state, postal_code, customer_type, credit_limit, is_active)
VALUES 
('CUST-TEMP-02', 'Harsha', 'Reddy', 'harsha.reddy@example.test', 9988701009, NULL, 'Vijayawada', 'Andhra Pradesh', '520001', 'GOLD', 0.00, TRUE);


SELECT * FROM customers 
WHERE customer_code = 'CUST-TEMP-02';


DELETE FROM customers 
WHERE customer_code = 'CUST-TEMP-02';