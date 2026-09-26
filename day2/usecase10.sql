USE cdg_hyd_jfs_058;

SELECT * FROM support_tickets;


INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-27001', 'Kavya Menon', 'kavya.menon@example.test', 'Password reset problem', 'Password reset email is not being received', 'ACCOUNT', 'HIGH', 'OPEN', NULL, NULL);


INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-27002', 'BlueMart Stores', 'bluemart@example.test', 'Invoice mismatch', 'The recent invoice shows an incorrect amount', 'BILLING', 'MEDIUM', 'IN_PROGRESS', 'Priya', NULL),
('TKT-27003', 'Rahul Nair', 'rahul.nair@example.test', 'Upload failure', 'The application closes during document upload', 'TECHNICAL', 'CRITICAL', 'OPEN', 'Arun', NULL);


INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-27004', 'Sneha Reddy', 'sneha.reddy@example.test', 'Update account email', 'Request to change the registered email address', 'ACCOUNT', 'LOW', 'OPEN', NULL, NULL),
('TKT-27005', 'Demo Customer', 'demo.customer@example.test', 'Resolved test request', 'Temporary ticket created for delete testing', 'GENERAL', 'MEDIUM', 'RESOLVED', 'Support Agent', CURRENT_TIMESTAMP);


-- Valid category
INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-27006', 'Rakesh Kumar', 'rakesh.kumar@example.test', 'Delivery status query', 'Customer needs an update regarding the delivery', 'GENERAL', 'MEDIUM', 'CLOSED', NULL, NULL);


-- Valid priority
INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-27007', 'Pooja Sharma', 'pooja.sharma@example.test', 'Payment issue', 'Customer was charged twice for the same order', 'BILLING', 'HIGH', 'IN_PROGRESS', NULL, NULL);


-- Valid status
INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-27008', 'Rohit Verma', 'rohit.verma@example.test', 'Dashboard login issue', 'Customer cannot access the dashboard', 'TECHNICAL', 'CRITICAL', 'OPEN', NULL, NULL);


-- Unique ticket number
INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-27009', 'Pooja Sharma', 'pooja.sharma@example.test', 'Duplicate payment concern', 'Customer noticed two charges for one transaction', 'BILLING', 'HIGH', 'OPEN', NULL, NULL);


-- Valid created and resolved timestamps
INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, created_at, resolved_at)
VALUES
('TKT-27010', 'Pooja Sharma', 'pooja.sharma@example.test', 'Payment verification', 'Customer requested verification of a payment', 'BILLING', 'HIGH', 'RESOLVED', 'Kiran', '2026-09-24 10:00:00', '2026-09-24 12:00:00');


UPDATE support_tickets
SET assigned_agent = 'Anjali',
    ticket_status = 'IN_PROGRESS'
WHERE ticket_number = 'TKT-27001';


UPDATE support_tickets
SET ticket_status = 'RESOLVED',
    resolved_at = CURRENT_TIMESTAMP
WHERE ticket_number = 'TKT-27003';


UPDATE support_tickets
SET priority = 'MEDIUM'
WHERE ticket_status = 'OPEN'
AND category = 'ACCOUNT';


UPDATE support_tickets
SET assigned_agent = 'Vijay'
WHERE ticket_number = 'TKT-27002';


UPDATE support_tickets
SET resolved_at = '2026-09-22'
WHERE ticket_number = 'TKT-27001';


SELECT * FROM support_tickets
WHERE ticket_number = 'TKT-27005';


DELETE FROM support_tickets
WHERE ticket_number = 'TKT-27005';


INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category, priority, ticket_status, assigned_agent, resolved_at)
VALUES
('TKT-TEMP-02', 'Manoj Kumar', 'manoj.kumar@example.test', 'Refund request', 'Customer requested a refund for an incorrect charge', 'BILLING', 'HIGH', 'OPEN', NULL, NULL);


SELECT * FROM support_tickets
WHERE ticket_number = 'TKT-TEMP-02';


DELETE FROM support_tickets
WHERE ticket_number = 'TKT-TEMP-02';


SELECT * FROM support_tickets;