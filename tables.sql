CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    address VARCHAR(100),
    rank INT,
    title VARCHAR(50),
    dept_id INT,
    super_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id),
    FOREIGN KEY (super_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Applicant (
    app_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    address VARCHAR(100)
);

CREATE TABLE Site_Employment (
    site_id INT,
    emp_id INT,
    PRIMARY KEY (site_id, emp_id),
    FOREIGN KEY (site_id) REFERENCES Marketing_Site(site_id),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Customer (
    cust_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    address VARCHAR(100),
    emp_id INT,
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Part_supplies (
    type VARCHAR(50),
    v_id INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (v_id) REFERENCES Vendor(vendor_id),
    PRIMARY KEY (type, v_id)
);

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Product_Materials (
    product_id INT,
    type VARCHAR(50),
    quantity INT,
    PRIMARY KEY (product_id, type),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Job_Position (
    job_id INT PRIMARY KEY,
    post_date DATE,
    description TEXT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE Phone (
    person_id INT,
    phone_number VARCHAR(15),
    PRIMARY KEY (person_id, phone_number)
    -- person_id can refer to any person (employee, applicant, customer)
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    type VARCHAR(50),
    size VARCHAR(20),
    price DECIMAL(10, 2),
    weight DECIMAL(10, 2),
    style VARCHAR(50)
);

CREATE TABLE Vendor (
    vendor_id INT PRIMARY KEY,
    vendor_name VARCHAR(50),
    address VARCHAR(100),
    account_number VARCHAR(20),
    credit DECIMAL(10, 2),
    url VARCHAR(100)
);

CREATE TABLE Marketing_Site (
    site_id INT PRIMARY KEY,
    site_name VARCHAR(50),
    location VARCHAR(100)
);

CREATE TABLE Part (
    type VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Sale (
    order_id INT PRIMARY KEY,
    sale_time TIMESTAMP,
    product_id INT,
    site_id INT,
    emp_id INT,
    cust_id INT,
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (site_id) REFERENCES Marketing_Site(site_id),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id),
    FOREIGN KEY (cust_id) REFERENCES Customer(cust_id)
);

CREATE TABLE Interview (
    job_id INT,
    emp_id INT,
    applicant_id INT,
    time TIMESTAMP,
    grade INT,
    PRIMARY KEY (job_id, emp_id, applicant_id),
    FOREIGN KEY (job_id) REFERENCES Job_Position(job_id),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id),
    FOREIGN KEY (applicant_id) REFERENCES Applicant(app_id)
);

CREATE TABLE Salary (
    trans_id INT,
    emp_id INT,
    pay_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id),
    PRIMARY KEY (trans_id, emp_id)
);
