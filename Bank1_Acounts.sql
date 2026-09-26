USE cdg_hyd_jfs_058;

CREATE TABLE bank1_accounts( 
    account_id INT AUTO_INCREMENT, 
    account_number CHAR(12) NOT NULL, 
    account_holder_name VARCHAR(120) NOT NULL, 
    account_type VARCHAR(20) NOT NULL, 
    balance DECIMAL(15, 2) NOT NULL DEFAULT 0.00, 
    currency_code CHAR(3) NOT NULL DEFAULT 'INR', 
    branch_name VARCHAR(100) NOT NULL, 
    opened_date DATE NOT NULL, 
    interest_rate DECIMAL(5, 2) NOT NULL DEFAULT 0.00, 
    overdraft_limit DECIMAL(12, 2) NOT NULL DEFAULT 0.00, 
    account_status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE', 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 

    CONSTRAINT `pk_account_id` PRIMARY KEY (account_id), 
    CONSTRAINT `uq_account_number` UNIQUE (account_number), 
    CONSTRAINT `chk_balance_non_negative` CHECK (balance >= 0), 
    CONSTRAINT `chk_overdraft_non_negative` CHECK (overdraft_limit >= 0), 
    CONSTRAINT `chk_intrest_rate_range` CHECK (interest_rate BETWEEN 0.00 AND 100.00)
);


INSERT INTO bank1_accounts 
(account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES 
('200000000001', 'Rohan Mehta', 'SAVINGS', 8500.75, 'Banjara Hills', '2025-11-10', 4.00, 0.00, 'ACTIVE');


INSERT INTO bank1_accounts 
(account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES 
('200000000002', 'Priya Sharma', 'CURRENT', 24500.00, 'Madhapur', '2026-02-18', 1.50, 1000.00, 'ACTIVE');


INSERT INTO bank1_accounts 
(account_number, account_holder_name, account_type, balance, branch_name, opened_date, interest_rate, overdraft_limit, account_status)
VALUES 
('200000000003', 'Kiran Reddy', 'FIXED_DEPOSIT', 75000.00, 'Ameerpet', '2026-05-25', 7.50, 0.00, 'ACTIVE');


SELECT * FROM bank1_accounts;
