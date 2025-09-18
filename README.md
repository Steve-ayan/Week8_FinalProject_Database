# Student Records Database Management System

## Project Overview

This project is a complete **Relational Database Management System (DBMS)** designed and implemented in MySQL. It was developed for the Week 8 Final Project assignment for the MSc Civil Engineering program at Cardiff University. The system is built to manage academic data, including student information, courses, instructors, and student enrollment records.

---

## Database Schema

The database, named `StudentRecords_DB`, consists of four primary tables. They are linked using constraints to ensure data integrity and proper relationships.

* `Instructors`: Stores information about the teaching staff.
* `Students`: Stores personal and contact information for each student.
* `Courses`: Contains details about the courses offered, with a link to the assigned instructor.
* `Enrollment`: This is a **junction table** that manages the many-to-many relationship between students and courses, recording which student is enrolled in which course and their final grade.

---

## Relationships

The database schema includes the following relationships:

* **One-to-Many**: One instructor can teach many courses.
* **Many-to-Many**: One student can enroll in many courses, and one course can have many students. This is implemented using the `Enrollment` table.

---

## How to Run

To set up and run this database, simply follow these steps:

1.  **Open the File**: Open the `StudentRecords.DB.sql` file in **MySQL Workbench** or any MySQL client.
2.  **Execute the Script**: Run the entire script. It will create the database, define all tables with their relationships and constraints, and populate them with sample data.

---

## Files

* `StudentRecords.DB.sql`: The core SQL script containing all the `CREATE TABLE` and `INSERT` statements.
* `README.md`: This file, which provides an overview of the project.# Week8_FinalProject_Database
