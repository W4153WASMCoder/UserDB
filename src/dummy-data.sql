-- Insert dummy data into the users table
INSERT INTO users (sub, email, name, picture, lastLogin) VALUES
('sub_001', 'john.doe@example.com', 'john', 'https://example.com/images/john.jpg', NOW() - INTERVAL 1 DAY),
('sub_002', 'jane.smith@example.com', 'jane', 'https://example.com/images/jane.jpg', NOW() - INTERVAL 2 DAY),
('sub_003', 'alice.johnson@example.com', 'alice', 'https://example.com/images/alice.jpg', NOW() - INTERVAL 3 DAY),
('sub_004', 'bob.brown@example.com', 'bob', 'https://example.com/images/bob.jpg', NOW() - INTERVAL 4 DAY),
('sub_005', 'charlie.black@example.com', 'charlie', 'https://example.com/images/charlie.jpg', NOW() - INTERVAL 5 DAY);
