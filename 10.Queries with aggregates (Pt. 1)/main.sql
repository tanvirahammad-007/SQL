-- Find the longest time that an employee has been at the studio
SELECT MAX(years_employed) as Max_years
FROM employees;

-- For each role, find the average number of years employed by employees in that role
SELECT role, avg(years_employed) from employees
GROUP BY role;

-- Find the total number of employee years worked in each building
SELECT building, SUM(years_employed) as Total_years
FROM employees
GROUP BY building;
