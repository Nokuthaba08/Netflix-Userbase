-- QUESTIONS

 -- 1. What is the total subscription of netflix by gender?

SELECT gender, count(*) 
FROM netflix
WHERE age>18
GROUP BY gender;

-- 2. What is the total subscription of netflix by country?

SELECT country, count(*) AS count 
FROM netflix
GROUP BY country;

-- 3. What is the total subscription of netflix by age? PR Gender distribution?

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

-- 4. What is the total subscription of netflix by device?
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

-- 5. What is the total revanue?


-- 6.What is the average length of subscription? last payment vs join date

-- 7. Calc age_gender
