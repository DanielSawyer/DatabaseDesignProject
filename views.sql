CREATE VIEW View1 AS
SELECT
    e.emp_id,
    AVG(s.amount) AS average_monthly_salary
FROM
    Employee e
JOIN
    Salary s ON e.emp_id = s.emp_id
GROUP BY
    e.emp_id;

SELECT * FROM View1;

CREATE VIEW View2 AS
SELECT
    i.applicant_id,
    i.job_id,
    COUNT(*) AS passed_interviews
FROM
    Interview i
WHERE
    i.grade > 60
GROUP BY
    i.applicant_id, i.job_id;

SELECT * FROM View2;

CREATE VIEW View3 AS
SELECT
    p.type,
    COUNT(s.product_id) AS total_items_sold
FROM
    Sale s
JOIN
    Product p ON s.product_id = p.product_id
GROUP BY
    p.type;

SELECT * FROM View3;

CREATE VIEW View4 AS
SELECT
    materials.product_id,
    SUM(supplies.price * materials.quantity) AS total_part_cost
FROM
    Product_Materials materials
JOIN
    Part_supplies supplies ON materials.type = supplies.type
GROUP BY
    materials.product_id;

SELECT * FROM View4;
