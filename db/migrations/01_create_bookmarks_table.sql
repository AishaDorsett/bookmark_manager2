-- Create database
CREATE DATABASE bookmark_manager;

-- Create test database
CREATE DATABASE bookmark_manager_test;

-- Create table
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

-- Manual ID
INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');

-- Automatic ID
INSERT INTO bookmarks (url) VALUES ('http://www.askjeeves.com');
