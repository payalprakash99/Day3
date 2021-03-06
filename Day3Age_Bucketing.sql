SELECT count(response) as Response_Count,
CASE
  WHEN Age < 10 THEN '<10s'
  WHEN Age BETWEEN 10 AND 20 THEN '20s'
  WHEN Age BETWEEN 21 AND 30 THEN '30s'
  WHEN Age BETWEEN 31 AND 40 THEN '40s'
  WHEN Age BETWEEN 41 AND 50 THEN '50s'
  WHEN Age BETWEEN 51 AND 60 THEN '60s'
  WHEN Age BETWEEN 61 AND 70 THEN '70s'
  WHEN Age BETWEEN 71 AND 80 THEN '80s'
  WHEN Age BETWEEN 81 AND 90 THEN '90s'
  WHEN Age BETWEEN 91 AND 100 THEN '100s'
  WHEN Age > 100  THEN '>100s'
  ELSE 'Deceased'
END AS 'Age_Bucket'
from csvfile  where response=1
group by 
CASE
  WHEN Age < 10 THEN '<10s'
  WHEN Age BETWEEN 10 AND 20 THEN '20s'
  WHEN Age BETWEEN 21 AND 30 THEN '30s'
  WHEN Age BETWEEN 31 AND 40 THEN '40s'
  WHEN Age BETWEEN 41 AND 50 THEN '50s'
  WHEN Age BETWEEN 51 AND 60 THEN '60s'
  WHEN Age BETWEEN 61 AND 70 THEN '70s'
  WHEN Age BETWEEN 71 AND 80 THEN '80s'
  WHEN Age BETWEEN 81 AND 90 THEN '90s'
  WHEN Age BETWEEN 91 AND 100 THEN '100s'
  WHEN Age > 100  THEN '>100s'
  ELSE 'Deceased'
END
order by Response_Count
-----------------------------------------------

SELECT count(response) as Response_Count,
CASE
  WHEN Age < 10 THEN '<10s'
  WHEN Age BETWEEN 10 AND 20 THEN '20s'
  WHEN Age BETWEEN 21 AND 30 THEN '30s'
  WHEN Age BETWEEN 31 AND 40 THEN '40s'
  WHEN Age BETWEEN 41 AND 50 THEN '50s'
  WHEN Age BETWEEN 51 AND 60 THEN '60s'
  WHEN Age BETWEEN 61 AND 70 THEN '70s'
  WHEN Age BETWEEN 71 AND 80 THEN '80s'
  WHEN Age BETWEEN 81 AND 90 THEN '90s'
  WHEN Age BETWEEN 91 AND 100 THEN '100s'
  WHEN Age > 100  THEN '>100s'
  ELSE 'Deceased'
END AS 'Age_Bucket'
from csvfile  where response=0
group by 
CASE
  WHEN Age < 10 THEN '<10s'
  WHEN Age BETWEEN 10 AND 20 THEN '20s'
  WHEN Age BETWEEN 21 AND 30 THEN '30s'
  WHEN Age BETWEEN 31 AND 40 THEN '40s'
  WHEN Age BETWEEN 41 AND 50 THEN '50s'
  WHEN Age BETWEEN 51 AND 60 THEN '60s'
  WHEN Age BETWEEN 61 AND 70 THEN '70s'
  WHEN Age BETWEEN 71 AND 80 THEN '80s'
  WHEN Age BETWEEN 81 AND 90 THEN '90s'
  WHEN Age BETWEEN 91 AND 100 THEN '100s'
  WHEN Age > 100  THEN '>100s'
  ELSE 'Deceased'
END
order by Response_Count


-- select * from csvfile