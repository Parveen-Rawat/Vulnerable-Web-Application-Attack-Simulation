-- db/sample_data.sql
-- Safe sample data for VulnLab (no real secrets).

USE vulnlab;

-- Insert demo user(s)
INSERT INTO users (username, password) VALUES
('admin', 'admin123'),
('alice', 'password123'),
('bob', 'letmein');

-- Insert a safe comment (non-malicious example)
INSERT INTO comments (name, message) VALUES
('DemoUser', 'Welcome to VulnLab. This is a safe example comment.');

-- (Optional) add a comment that looks like a test but NOT active XSS in repo
INSERT INTO comments (name, message) VALUES
('Tester', '&lt;script&gt;alert(\"XSS Demo\")&lt;/script&gt; <!-- encoded for safety in repo -->');

-- Insert sample ping logs (optional)
INSERT INTO ping_logs (ip_input, output) VALUES
('127.0.0.1', 'PING 127.0.0.1 (127.0.0.1) 56(84) bytes of data...'),
('8.8.8.8', 'PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data...');

-- Optional admin note / flag (for demo only)
INSERT INTO admin (username, note) VALUES
('admin', 'FLAG{vulnlab_demo_flag}');
