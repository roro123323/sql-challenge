
CREATE TABLE `Departments` (
	`dept_name` VARCHAR(50)   PRIMARY KEY ,
    `dept_no` VARCHAR(50)  NOT NULL   ,
);


CREATE TABLE `Employees` (
    `emp_no` INT  PRIMARY KEY ,
    `birth_date` date  NOT NULL ,
    `first_name` VARCHAR(50)  NOT NULL ,
    `last_name` VARCHAR(50)  NOT NULL ,
	`hire_date` date  NOT NULL ,
    `sex` VARCHAR(50)  NOT NULL ,
    )
	
	CREATE TABLE `Department_Manager` (
    `dept_no` VARCHAR(50)  NOT NULL ,
    `emp_no` INT  NOT NULL ,
    `past_date` date  NOT NULL ,
    `present_date` date  NOT NULL 
);
	
	
	CREATE TABLE `Department_Employees` (
	`dept_no` VARCHAR(50)  NOT NULL
    `emp_no` INT  NOT NULL ,
    `past_date` date  NOT NULL ,
    `present_date` date  NOT NULL 
);
	
	
	CREATE TABLE `Salaries` (
    `emp_no` INT  NOT NULL ,
    `salary` INTEGER  NOT NULL ,
    `past_date` date  NOT NULL ,
    `present_date` date  NOT NULL 
);

CREATE TABLE `Titles` (
    `emp_no` INT  NOT NULL ,
    `title` VARCHAR(50)  NOT NULL ,
    `past_date` date  NOT NULL ,
    `present_date` date  NOT NULL 
);
	
	
	