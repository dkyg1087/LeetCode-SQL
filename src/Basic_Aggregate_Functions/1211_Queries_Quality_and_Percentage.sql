# Write your MySQL query statement below

SELECT query_name, round(avg(rating / position), 2) as quality, round(sum(case when rating < 3 then 1 else 0 end) * 100 / count(*), 2) as poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name