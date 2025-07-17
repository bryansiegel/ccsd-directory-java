-- Fix contacts table to have auto-increment ID
-- Run this SQL script in your MySQL database

-- First, check current table structure
-- DESCRIBE contacts;

-- Alter the table to add auto-increment to the id column
ALTER TABLE contacts MODIFY COLUMN id BIGINT NOT NULL AUTO_INCREMENT;

-- If the table doesn't have a primary key on id, add it
-- ALTER TABLE contacts ADD PRIMARY KEY (id);

-- Optional: Reset auto-increment value to continue from current max + 1
-- ALTER TABLE contacts AUTO_INCREMENT = (SELECT COALESCE(MAX(id), 0) + 1 FROM contacts);