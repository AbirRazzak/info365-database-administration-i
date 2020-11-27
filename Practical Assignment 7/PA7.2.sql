-- 1. Get a list of all colleges located in a city. (Show only the first 10 rows).
SELECT s.INSTNM 
FROM school s 
WHERE s.LOCALE IN ( SELECT l.LOCALE_ID 
					FROM locale l
					WHERE l.LOCALE_VALUE LIKE '%City%')
LIMIT 10;


-- 2. Get a list of all colleges located in the Northeast US (Mid East and New England).  (Show only the first ten rows.)
SELECT s.INSTNM 
FROM school s 
WHERE s.REGION IN ( SELECT r.REGION_ID 
					FROM region r 
					WHERE r.REGION_VALUE LIKE '%New England%'
					OR r.REGION_VALUE LIKE '%Mid East%')
LIMIT 10;


-- 3. Get any dataset of your choice, demonstrating the use of a subquery in the SELECT clause.
SELECT s.INSTNM 
FROM school s 
WHERE s.LOCALE2 = ( SELECT l2.LOCALE2_ID 
					FROM locale2 l2 
					WHERE l2.LOCALE2_VALUE LIKE '%Small Town%'
					LIMIT 1)
LIMIT 10;
