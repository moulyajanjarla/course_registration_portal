Course Registration Portal
Overview
The Course Registration Portal is a web-based application that allows students, faculty, and parents to perform various tasks related to course registration in colleges. It provides a centralized system for course management and user interaction.

Key Features:
Student: Register for courses, view available courses.
Faculty: Add new courses, view enrolled students.
Parent: View registered courses for their children.
Login System: Secure login system using PHP sessions.
Tech Stack
Frontend: HTML, CSS, JavaScript
Backend: PHP
Database: MySQL
Server: XAMPP (Apache, MySQL)
Installation
1. Download and Install XAMPP
If you haven't already installed XAMPP:

Windows/macOS/Linux: Download XAMPP
After installation, launch XAMPP Control Panel and start both Apache and MySQL services.
2. Setup Project
Download or clone this repository to your local machine.
Place the Course-Registration-Portal folder inside the htdocs directory of your XAMPP installation.
The directory should be:
makefile
Copy code
C:\xampp\htdocs\Course-Registration-Portal\
3. Set Up the Database
Open phpMyAdmin by visiting http://localhost/phpmyadmin.
Create a new database named course_registration.
Import the courses.sql file located in the db/ folder:
Go to the "Import" tab in phpMyAdmin.
Click "Choose File", navigate to Course-Registration-Portal/db/courses.sql, and click "Go".
4. Start the Application
Open your browser and visit http://localhost/Course-Registration-Portal/index.html to access the login page.
The application will guide users based on their role (student, faculty, parent).
Folder Structure
sql
Copy code
Course-Registration-Portal/
├── db/                        <-- Database-related files
│   └── courses.sql            <-- SQL file to create database and tables
├── index.html                 <-- Login page
├── style.css                  <-- Stylesheet
├── script.js                  <-- JavaScript file for frontend logic
├── process.php                <-- PHP file for login validation and course registration
├── faculty_dashboard.php      <-- Dashboard for faculty (add courses)
├── parent_dashboard.php       <-- Dashboard for parents (view registered courses)
└── student_dashboard.php      <-- Dashboard for students (register for courses)
Features
1. User Authentication
Login System:
Users can log in with credentials (username, password).
The system uses PHP sessions to validate user login.
Roles: student, faculty, parent.
After login, users are redirected to role-specific dashboards.
2. Faculty Dashboard
Faculty members can add new courses.
The dashboard contains a form to input course details (course name, instructor, and available seats).
Add Course Form:
Faculty members can submit the form to add new courses to the database.
3. Parent Dashboard
Parents can view the courses their children are registered for.
The portal displays a list of courses their child is enrolled in.
4. Student Dashboard
Students can view available courses and register for them.
After logging in, students can choose from available courses and submit their registration.
Code Details
1. process.php - User Login & Registration Logic
Handles user login validation.
If the login is successful, it stores session data and redirects users to their respective dashboards.
2. faculty_dashboard.php - Faculty Features
Displays a form to add new courses.
Allows faculty to input course details and save them to the database.
3. parent_dashboard.php - Parent Features
Displays registered courses for each child.
Allows parents to view courses their child has enrolled in.
4. student_dashboard.php - Student Features
Displays available courses for registration.
Allows students to select a course and register by submitting a form.
How to Use the Application
For Students:
Log in with a valid student account.
Access the student dashboard.
Browse available courses and register for them.
For Faculty:
Log in with a valid faculty account.
Access the faculty dashboard.
Use the provided form to add new courses to the system.
For Parents:
Log in with a valid parent account.
Access the parent dashboard.
View the courses that their child has registered for.
Future Enhancements
Email Notifications: Send notifications to users when they successfully register for courses.
Course Scheduling: Allow users to select course times and schedule.
Admin Panel: Admin users can manage users, courses, and registrations.
Troubleshooting
1. Cannot Access the Application
Ensure that Apache and MySQL are running in XAMPP Control Panel.
Double-check that the Course-Registration-Portal folder is placed inside the htdocs directory.
2. Error After Login
Check that the username and password match records in the users table.
Review the session validation in the PHP code.
3. SQL Import Issues
Ensure that you created the course_registration database and imported the courses.sql file correctly in phpMyAdmin.
Conclusion
The Course Registration Portal is a simple, yet effective web application for managing course registrations in a college setting. The portal supports different user roles (students, faculty, parents) and provides a user-friendly interface for managing courses. This project is ideal for learning about web development, databases, and PHP-based user authentication.

Feel free to modify and enhance this project for your needs!
