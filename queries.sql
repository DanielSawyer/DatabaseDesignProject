-- 1. Return the ID and Name of interviewers who participate in interviews where the interviewee's name is "Hellen Cole" arranged for job "11111".
SELECT
    e.emp_id,
    CONCAT(e.f_name, ' ', e.l_name) AS interviewer_name
FROM
    Interview i
JOIN
    Employee e ON i.emp_id = e.emp_id
JOIN
    Applicant a ON i.applicant_id = a.app_id
WHERE
    a.f_name = 'Hellen' AND a.l_name = 'Cole' AND i.job_id = 11111;

-- 2. Return the ID of all jobs which are posted by department "Marketing" in January 2011.
SELECT
    j.job_id
FROM
    Job_Position j
JOIN
    Department d ON j.dept_id = d.dept_id
WHERE
    d.dept_name = 'Marketing' AND MONTH(j.post_date) = 1 AND YEAR(j.post_date) = 2011;

-- 3. Return the ID and Name of the employees having no supervisees.
SELECT
    e.emp_id
FROM
    Employee e
LEFT JOIN
    Employee e2 ON e.emp_id = e2.super_id
WHERE
    e2.emp_id IS NULL;

-- 4. Return the Id and Location of the marketing sites with no sale records during March 2011.
SELECT
    ms.site_id,
    ms.location
FROM
    Marketing_Site ms
LEFT JOIN
    Sale s ON ms.site_id = s.site_id AND MONTH(s.sale_time) = 3 AND YEAR(s.sale_time) = 2011
WHERE
    s.order_id IS NULL;

-- 5. Return the job's id and description, which does not hire a suitable person one month after it is posted.
-- TODO: does not work because does not check for hire (passed interview process)
SELECT
    j.job_id,
    j.description
FROM
    Job_Position j
LEFT JOIN
    Interview i ON j.job_id = i.job_id
WHERE
    i.applicant_id IS NULL AND j.post_date < DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

-- 6. Return the ID and Name of the salespeople who have sold all product types whose price is above $200.
SELECT
    e.emp_id
FROM
    Employee e
JOIN
    Sale s ON e.emp_id = s.emp_id
JOIN
    Product p ON s.product_id = p.product_id
WHERE
    p.price > 200
GROUP BY
    e.emp_id
HAVING
    COUNT(DISTINCT p.type) = (SELECT COUNT(DISTINCT type) FROM Product WHERE price > 200);

-- 7. Return the department's id and name, which has no job post during 1/1/2011 and 2/1/2011.
SELECT
    d.dept_id,
    d.dept_name
FROM
    Department d
LEFT JOIN
    Job_Position j ON d.dept_id = j.dept_id AND j.post_date BETWEEN '2011-01-01' AND '2011-02-01'
WHERE
    j.job_id IS NULL;

-- 8. Return the ID, Name, and Department ID of the existing employees who apply for job "12345"
SELECT
    e.emp_id,
    CONCAT(e.f_name, ' ', e.l_name) AS employee_name,
    e.dept_id
FROM
    Employee e
JOIN
    Interview i ON e.emp_id = i.emp_id
WHERE
    i.job_id = 12345;
