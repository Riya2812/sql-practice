--  CASE, IF, and COALESCE
SELECT name, age,
  CASE
    WHEN age < 18 THEN 'Minor'
    WHEN age >= 18 THEN 'Adult'
    ELSE 'Unknown'
  END AS age_group
FROM Students;

-- CASE inside Aggregation
SELECT
  COUNT(CASE WHEN age > 21 THEN 1 END) AS above_21,
  COUNT(CASE WHEN age <= 21 THEN 1 END) AS age_21_or_below
FROM Students;


-- IF Function (MySQL only)
SELECT name, age, 
  IF(age >= 21, 'Eligible', 'Not Eligible') AS placement_status
FROM Students;


-- COALESCE() to Handle NULLs
SELECT name, COALESCE(email, 'No Email') AS contact
FROM Students;

