
CREATE TABLE `Departments` (
	`dept_name` VARCHAR  NOT NULL ,
    `dept_no` VARCHAR  NOT NULL PRIMARY KEY  ,
);


CREATE TABLE `Employees` (
    `emp_no` INT  NOT NULL PRIMARY KEY ,
    `birth_date` date  NOT NULL ,
    `first_name` VARCHAR  NOT NULL ,
    `last_name` VARCHAR  NOT NULL ,
	`hire_date` date  NOT NULL ,
    `sex` VARCHAR  NOT NULL ,
    )
	
	CREATE TABLE `Department_Manager` (
    `dept_no` VARCHAR  NOT NULL ,
    `emp_no` int  NOT NULL ,
    `past_date` date  NOT NULL ,
    `present_date` date  NOT NULL 
);
	
	
	CREATE TABLE `Department_Employees` (
	`dept_no` VARCHAR  NOT NULL
    `emp_no` INT  NOT NULL ,
    `past_date` date  NOT NULL ,
    `present_date` date  NOT NULL 
);
	
	
	CREATE TABLE `Salaries` (
    `emp_no` int  NOT NULL ,
    `salary` INTEGER  NOT NULL ,
    `past_date` date  NOT NULL ,
    `present_date` date  NOT NULL 
);

CREATE TABLE `Titles` (
    `emp_no` int  NOT NULL ,
    `title` VARCHAR  NOT NULL ,
    `past_date` date  NOT NULL ,
    `present_date` date  NOT NULL 
);
	
	
	