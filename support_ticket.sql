USE cdg_hyd_jfs_058;
CREATE TABLE support_tickets (
    ticket_id INT AUTO_INCREMENT,
    ticket_number VARCHAR(20) NOT NULL,
    requester_name VARCHAR(120) NOT NULL,
    requester_email VARCHAR(200) NOT NULL,
    subject VARCHAR(120) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(20) NOT NULL,
    priority VARCHAR(20) NOT NULL DEFAULT 'MEDIUM',
    ticket_status VARCHAR(20) NOT NULL DEFAULT 'OPEN',
    assigned_agent VARCHAR(120),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP,
    last_updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT `pk_support_tickets_ticket_id` PRIMARY KEY (ticket_id),
    CONSTRAINT `uq_ticket_number` UNIQUE (ticket_number),
    CONSTRAINT `chk_resolved_time`
        CHECK (resolved_at IS NULL OR resolved_at >= created_at)
);


INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category)
VALUES('TCK101', 'Rahul', 'rahul@example.com','Password Reset','Unable to reset my account password.','TECHNICAL');


INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category,priority, ticket_status, assigned_agent)
VALUES('TCK102', 'Sneha', 'sneha@example.com', 'Payment Failed', 'My payment was declined while completing the order.','BILLING','HIGH','OPEN','Anil Kumar');


INSERT INTO support_tickets
(ticket_number, requester_name, requester_email, subject, description, category,priority, ticket_status, assigned_agent, created_at, resolved_at)
VALUES('TCK103', 'Vivek', 'vivek@example.com','Delivery Delay','The order has not arrived on the expected delivery date.','DELIVERY','MEDIUM', 'RESOLVED','Priya Sharma','2026-09-20 10:00:00', '2026-09-21 15:30:00');


SELECT * FROM support_tickets;
