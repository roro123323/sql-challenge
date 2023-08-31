
CREATE TABLE `Departments` (
	`dept_name` VARCHAR(50)   PRIMARY KEY ,
    `dept_no` VARCHAR(50)  NOT NULL   ,
);


CREATE TABLE `Employees` (
    `emp_no` INT  PRIMARY KEY ,
    `birth_date` date  NOT NULL ,
    'emp_title' VARCHAR(50)  NOT NULL
    `first_name` VARCHAR(50)  NOT NULL ,
    `last_name` VARCHAR(50)  NOT NULL ,
	`hire_date` date  NOT NULL ,
    `sex` VARCHAR(50)  NOT NULL ,
    )
	
	CREATE TABLE `Department_Manager` (
    `dept_no` VARCHAR(50)  NOT NULL ,
    `emp_no` INT  NOT NULL ,
);
	
	
	CREATE TABLE `Department_Employees` (
	`dept_no` VARCHAR(50)  NOT NULL
    `emp_no` INT  NOT NULL ,
);
	
	
	CREATE TABLE `Salaries` (
    `emp_no` INT  NOT NULL ,
    `salary` INT  NOT NULL ,
);

CREATE TABLE `Titles` (
    `Title` VARCHAR(50)  NOT NULL ,
    'Title_id' VARCHAR(50) NOT NULL
);
	
	
FOREIGN KEY(title_id)REFERENCES titles (title_id)
FOREIGN KEY(emp_no)REFERENCES employees (emp_no)
FOREIGN KEY(dept_no)REFERENCES departments (dept_no)
FOREIGN KEY(emp_no)REFERENCES employees (emp_no )
FOREIGN KEY(dept_no)REFERENCES departments (dept_no)
FOREIGN KEY(emp_no)REFERENCES employees (emp_no)

    