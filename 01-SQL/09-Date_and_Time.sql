-- ==========================================
-- DATE, TIME, and DATETIME Types in MySQL
-- ==========================================

-- 1. Create a table using DATE, TIME, and DATETIME columns
CREATE TABLE events (
    event_id INT PRIMARY KEY AUTO_INCREMENT,
    event_name VARCHAR(100),
    event_date DATE,
    event_time TIME,
    event_datetime DATETIME
);

-- ==========================================
-- 2. Insert sample data
-- ==========================================

-- Insert an event happening today at a specific time
INSERT INTO events (event_name, event_date, event_time, event_datetime) VALUES
('Morning Meeting', '2025-04-27', '09:00:00', '2025-04-27 09:00:00'),
('Lunch Break', '2025-04-27', '12:30:00', '2025-04-27 12:30:00'),
('Project Deadline', '2025-05-01', '23:59:00', '2025-05-01 23:59:00');

-- ==========================================
-- 3. Select and view the data
-- ==========================================

SELECT * FROM events;

-- ==========================================
-- 4. More Useful Examples
-- ==========================================

-- Insert CURRENT DATE and TIME
INSERT INTO events (event_name, event_date, event_time, event_datetime) VALUES
('Instant Event', CURRENT_DATE(), CURRENT_TIME(), NOW());

-- Get today's events
SELECT event_name, event_date
FROM events
WHERE event_date = CURRENT_DATE();

-- Get events happening after noon
SELECT event_name, event_time
FROM events
WHERE event_time > '12:00:00';

-- Get events scheduled after now
SELECT event_name, event_datetime
FROM events
WHERE event_datetime > NOW();

-- ==========================================
-- 5. Notes:
-- ==========================================

-- DATE: 'YYYY-MM-DD' (e.g., '2025-04-27')
-- TIME: 'HH:MM:SS' (e.g., '09:00:00')
-- DATETIME: 'YYYY-MM-DD HH:MM:SS' (e.g., '2025-04-27 09:00:00')

-- CURRENT_DATE() gives today's date
-- CURRENT_TIME() gives current time
-- NOW() gives current date and time together
