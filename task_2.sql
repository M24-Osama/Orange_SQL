create table departments (
id int  IDENTITY(1,1) PRIMARY KEY,
names varchar(255) not null
)
create table employees (
id int  IDENTITY(1,1) PRIMARY KEY,
names varchar(255) not null, 
birthdates date not null,  
phone_numbers decimal(15) not null,
national_IDs varchar(50) unique not null,
nationalities varchar(50) not null,
marital_statuses varchar(20) not null,
personal_photo image, 
entry_dates date DEFAULT GETDATE(),
passwords varchar(255) not null,
position NVARCHAR(50) NOT NULL DEFAULT 'Employee',
CONSTRAINT chk_position CHECK (Position IN ('Manager', 'Employee')),
department_id int,
FOREIGN KEY (department_id) REFERENCES departments(id)
) 

create table feedback (
id int IDENTITY(1,1) PRIMARY KEY,
title varchar(255) not null,
start_date date not null,
due_date date, 
description text not null,
task_level int not null,
employee_id int,
Foreign key (employee_id) REFERENCES employees(id)
)
create table tasks(
id int IDENTITY(1,1) PRIMARY KEY,
names VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
messages TEXT NOT NULL,
received_dates date DEFAULT GETDATE()
) 