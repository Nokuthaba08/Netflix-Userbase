CREATE DATABASE netflixs;

USE netflixs;

SELECT * FROM netflix;

DESCRIBE netflix; 

SET sql_safe_updates = 0;

SELECT * FROM netflix;

SELECT 
min(age) as youngest,
max(age) as oldest
FROM netflix
WHERE age >=18;

SELECT
CASE
WHEN age>=18 AND age <=28 THEN '18-28'
WHEN age>=29 AND age <=39 THEN '29-38'
WHEN age>=39 AND age <=49 THEN '39-48'
WHEN age>=49 AND age <=59 THEN '49-59'
ELSE '59+'
END AS age_group,
count(*) AS count_num
FROM netflix
WHERE age>18
GROUP BY age_group
ORDER BY age_group;

SELECT count(*) FROM netflix 
WHERE age>18;
SELECT count(*) FROM netflix 
WHERE age<18;

SELECT gender, count(*) AS count 
FROM netflix
WHERE age>18
GROUP BY gender;

SELECT country, count(*) AS count 
FROM netflix
GROUP BY country
ORDER BY count DESC;

SELECT device,
CASE 
WHEN 'subscription type' = 'basic' THEN 'monthly revenue'
WHEN 'subscription type' = 'standard' THEN 'monthly revenue'
WHEN 'subscription type' = 'premium' THEN 'monthly revenue'
ELSE 0
END AS count,
count(*) AS total_cost
FROM netflix
GROUP BY device
ORDER BY device;

