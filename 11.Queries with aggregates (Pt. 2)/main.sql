-- Find the number of Artists in the studio (without a HAVING clause)
SELECT role, COUNT(role) as total
FROM employees
WHERE role = "Artist";

-- Find the number of Employees of each role in the studio
SELECT role, COUNT(role) as total
FROM employees
GROUP BY role;

-- Find the total number of years employed by all Engineers
SELECT role, sum(years_employed) as total FROM employees
GROUP BY role
HAVING role = 'Engineer';
