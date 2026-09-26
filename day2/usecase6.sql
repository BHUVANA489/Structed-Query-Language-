USE cdg_hyd_jfs_058;

SELECT * FROM bank_accounts;

INSERT INTO bank_accounts 
(account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES 
('200000000001', 'Neha Reddy', 'SAVINGS', 92000.00, 'INR', 'Hitech City Branch', '2024-03-20', 3.75, 0.00, 'ACTIVE');


INSERT INTO bank_accounts 
(account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES 
('200000000002', 'BlueSky Traders', 'CURRENT', 65000.00, 'INR', 'Ameerpet Branch', '2023-08-15', 0.00, 125000.00, 'ACTIVE'),
('200000000003', 'Sneha Menon', 'FIXED_DEPOSIT', 45000.00, 'INR', 'Ernakulam Branch', '2025-05-12', 7.50, 0.00, 'ACTIVE');


INSERT INTO bank_accounts 
(account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES 
('200000000004', 'Imran Sheikh', 'SAVINGS', 18000.00, 'INR', 'Secunderabad Branch', '2022-11-18', 3.50, 0.00, 'FROZEN'),
('200000000005', 'Archived Test Account', 'CURRENT', 0.00, 'INR', 'Demo Branch', '2021-02-10', 0.00, 0.00, 'CLOSED');


-- Negative Balance
INSERT INTO bank_accounts 
(account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES 
('200000000006', 'GreenField Logistics', 'SAVINGS', -100.00, 'INR', 'Demo Branch', '2021-02-10', 0.00, 0.00, 'CLOSED');


-- Interest rate must be between 0.00 and 100.00
INSERT INTO bank_accounts 
(account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES 
('200000000007', 'GreenField Logistics', 'SAVINGS', 100.00, 'INR', 'Demo Branch', '2021-02-10', 105.00, 0.00, 'CLOSED');


-- Account type must be SAVINGS, CURRENT, or FIXED_DEPOSIT
INSERT INTO bank_accounts 
(account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES 
('200000000008', 'GreenField Logistics', 'SALARY', 100.00, 'INR', 'Demo Branch', '2021-02-10', 2.50, 0.00, 'CLOSED');


UPDATE bank_accounts 
SET balance = balance + 30000.00 
WHERE account_number = '200000000001';


UPDATE bank_accounts 
SET interest_rate = interest_rate + 0.25 
WHERE account_type = 'SAVINGS' 
AND interest_rate + 0.25 < 100.00;


UPDATE bank_accounts 
SET account_status = 'ACTIVE' 
WHERE account_number = '200000000004' 
AND account_status = 'FROZEN';


UPDATE bank_accounts 
SET balance = balance - 3000.00 
WHERE account_status = 'ACTIVE' 
AND balance >= 3000.00;


UPDATE bank_accounts 
SET branch_name = 'Central Commercial Branch' 
WHERE branch_name = 'Ameerpet Branch';


UPDATE bank_accounts 
SET balance = balance - 18000.00 
WHERE account_number = '200000000004';


SELECT * FROM bank_accounts 
WHERE account_status = 'CLOSED';

DELETE FROM bank_accounts 
WHERE account_status = 'CLOSED';


INSERT INTO bank_accounts 
(account_number, account_holder_name, account_type, balance, currency_code, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES 
('888888888888', 'Neha Reddy', 'SAVINGS', 92000.00, 'INR', 'Hitech City Branch', '2024-03-20', 3.75, 0.00, 'ACTIVE');


SELECT * FROM bank_accounts;


DELETE FROM bank_accounts 
WHERE account_number = '888888888888';