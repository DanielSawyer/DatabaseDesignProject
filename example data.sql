INSERT INTO Department (dept_id, dept_name) VALUES
	(1, 'Human Resources'),
	(2, 'Sales'),
	(3, 'Marketing');

INSERT INTO Employee (emp_id, age, gender, f_name, l_name, address, `rank`, title, dept_id, super_id) VALUES
	(1, 30, 'Male', 'John', 'Doe', '123 Main St', 1, 'Manager', 1, NULL),
	(2, 25, 'Female', 'Jane', 'Smith', '456 Elm St', 2, 'Sales Representative', 2, 1),
	(3, 28, 'Male', 'Mike', 'Johnson', '789 Oak St', 2, 'Marketing Analyst', 3, 1);

INSERT INTO Applicant (app_id, age, gender, f_name, l_name, address) VALUES
	(1, 22, 'Female', 'Alice', 'Brown', '101 Pine St'),
	(2, 24, 'Male', 'Bob', 'White', '102 Cedar St');

INSERT INTO Vendor (vendor_id, vendor_name, address, account_number, credit, url) VALUES
	(1, 'ABC Supplies', '100 Vendor Way', '123456', 10000.00, 'http://abcsupplies.com');

INSERT INTO Part (type) VALUES
	('Bolt'),
	('Screw');

INSERT INTO Product (product_id, type, size, price, weight, style) VALUES
	(1, 'Gadget', 'Small', 19.99, 1.2, 'Modern'),
	(2, 'Widget', 'Medium', 29.99, 2.5, 'Classic');

INSERT INTO Marketing_Site (site_id, site_name, location) VALUES
	(1, 'Main Store', 'City Center'),
	(2, 'Online Store', 'Internet');

INSERT INTO Customer (cust_id, age, gender, f_name, l_name, address, emp_id) VALUES
	(1, 35, 'Female', 'Sarah', 'Green', '500 River Rd', 2),
	(2, 40, 'Male', 'David', 'Black', '600 Mountain Rd', 2);

INSERT INTO Part_supplies (type, v_id, price) VALUES
	('Bolt', 1, 0.10),
	('Screw', 1, 0.05);

INSERT INTO Product_Materials (product_id, type, quantity) VALUES
	(1, 'Bolt', 3),
	(1, 'Screw', 7),
	(2, 'Bolt', 5),
	(2, 'Screw', 10);

INSERT INTO Job_Position (job_id, post_date, description, dept_id) VALUES
	(1, '2023-01-01', 'Sales Manager', 2),
	(2, '2023-01-15', 'HR Specialist', 1);

INSERT INTO Phone (person_id, phone_number) VALUES
	(1, '123-456-7890'),
	(2, '234-567-8901'),
	(3, '345-678-9012');

INSERT INTO Sale (order_id, sale_time, product_id, site_id, emp_id, cust_id) VALUES
	(1, '2023-03-01 10:00:00', 1, 1, 2, 1),
	(2, '2023-03-01 11:00:00', 2, 2, 2, 2);

INSERT INTO Interview (job_id, emp_id, applicant_id, time, grade) VALUES
	(1, 1, 1, '2023-02-20 09:00:00', 70),
	(2, 1, 2, '2023-02-21 10:00:00', 65);

INSERT INTO Salary (trans_id, emp_id, pay_date, amount) VALUES
	(1, 1, '2023-03-01', 3000.00),
	(2, 2, '2023-03-01', 2000.00),
	(3, 3, '2023-03-01', 2500.00);
	(4, 1, '2023-04-01', 4000.00),

INSERT INTO Site_Employment (site_id, emp_id) VALUES
	(1, 1),
	(1, 2),
	(2, 3);
