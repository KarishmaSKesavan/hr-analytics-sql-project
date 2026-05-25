CREATE DATABASE hr_analytics;
USE hr_analytics;

CREATE TABLE departments (
    department_id INT ,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    hire_date DATE,
    department_id INT
);

CREATE TABLE salaries (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    salary DECIMAL(10,2),
    effective_date DATE
);

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    attendance_date DATE,
    status VARCHAR(20)
);

CREATE TABLE performance (
    performance_id INT PRIMARY KEY,
    employee_id INT,
    rating INT,
    review_year YEAR
);

CREATE TABLE leaves (
    leave_id INT PRIMARY KEY,
    employee_id INT,
    leave_type VARCHAR(50),
    start_date DATE,
    end_date DATE
);