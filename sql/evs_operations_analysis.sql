-- EVS Operations Analytics
-- PostgreSQL SQL Portfolio Project
-- Author: Ashinia Miller

-- ============================================================
-- 1. Revenue by Service Type
-- ============================================================

SELECT service_type,
       SUM(revenue) AS total_revenue
FROM jobs
GROUP BY service_type
ORDER BY total_revenue DESC;


-- ============================================================
-- 2. Job Volume by Service Type
-- ============================================================

SELECT service_type,
       COUNT(*) AS job_count
FROM jobs
GROUP BY service_type
ORDER BY job_count DESC;


-- ============================================================
-- 3. Average Revenue by Service Type
-- ============================================================

SELECT service_type,
       ROUND(AVG(revenue), 0) AS average_revenue
FROM jobs
GROUP BY service_type
ORDER BY average_revenue DESC;


-- ============================================================
-- 4. Revenue by Client
-- ============================================================

SELECT clients.client_name,
       SUM(jobs.revenue) AS total_revenue
FROM jobs
JOIN clients
ON jobs.client_id = clients.client_id
GROUP BY clients.client_name
ORDER BY total_revenue DESC;


-- ============================================================
-- 5. Client Revenue and Job Volume
-- ============================================================

SELECT clients.client_name,
       SUM(jobs.revenue) AS total_revenue,
       COUNT(*) AS job_count
FROM jobs
JOIN clients
ON jobs.client_id = clients.client_id
GROUP BY clients.client_name
ORDER BY total_revenue DESC;


-- ============================================================
-- 6. Average Revenue per Job by Client
-- ============================================================

SELECT clients.client_name,
       SUM(jobs.revenue) AS total_revenue,
       COUNT(*) AS job_count,
       AVG(jobs.revenue) AS avg_revenue
FROM jobs
JOIN clients
ON jobs.client_id = clients.client_id
GROUP BY clients.client_name
ORDER BY avg_revenue DESC;


-- ============================================================
-- 7. Employee Job Assignments
-- ============================================================

SELECT employees.employee_name,
       COUNT(*) AS job_count
FROM employees
JOIN staff_assignments
ON employees.employee_id = staff_assignments.employee_id
GROUP BY employees.employee_name
ORDER BY job_count DESC;


-- ============================================================
-- 8. Employee Total Assigned Hours
-- ============================================================

SELECT employees.employee_name,
       SUM(staff_assignments.hours_assigned) AS total_hours
FROM employees
JOIN staff_assignments
ON employees.employee_id = staff_assignments.employee_id
GROUP BY employees.employee_name
ORDER BY total_hours DESC;

-- ============================================================
-- 9. High-Revenue Service Types
-- ============================================================

SELECT service_type,
       SUM(revenue) AS total_revenue
FROM jobs
GROUP BY service_type
HAVING SUM(revenue) > 20000
ORDER BY total_revenue DESC;

-- ============================================================
-- 10. Employee Workload Analysis
-- ============================================================

SELECT employees.employee_name,
       COUNT(*) AS job_count,
       SUM(staff_assignments.hours_assigned) AS total_hours
FROM employees
JOIN staff_assignments
ON employees.employee_id = staff_assignments.employee_id
GROUP BY employees.employee_name
ORDER BY total_hours DESC;