-- Create Database
CREATE DATABASE IF NOT EXISTS course_registration;

-- Use the database
USE course_registration;

-- Create Users Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('student', 'faculty', 'parent') NOT NULL
);

-- Create Courses Table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    instructor VARCHAR(50),
    seats_available INT NOT NULL
);

-- Create Registrations Table
CREATE TABLE registrations (
    reg_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    course_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert Sample Users
INSERT INTO users (username, password, role) VALUES 
('john_doe', 'password123', 'student'),
('faculty_1', 'password123', 'faculty'),
('parent_1', 'password123', 'parent');

-- Insert Sample Courses
INSERT INTO courses (course_name, instructor, seats_available) VALUES 
('Mathematics 101', 'Prof. Smith', 50),
('Physics 201', 'Prof. Johnson', 40),
('Chemistry 301', 'Prof. White', 30);
