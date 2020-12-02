-- 1. Get the region that has colleges with the highest admissions average SAT scores.
SELECT r.REGION_VALUE AS 'REGION', AVG(a.SAT_AVG_ALL) AS ADM_SAT_AVG
	FROM admissions a
		INNER JOIN school s
			ON a.OPEID = s.OPEID
		INNER JOIN region r
			ON s.REGION = r.REGION_ID
	WHERE a.SAT_AVG_ALL IS NOT NULL
	GROUP BY s.REGION
	ORDER BY ADM_SAT_AVG DESC
LIMIT 1;


-- 2. Get the state that has colleges with the lowest admissions average SAT scores.
SELECT s.STABBR AS 'STATE', AVG(a.SAT_AVG_ALL) AS ADM_SAT_AVG
	FROM admissions a
		INNER JOIN school s
			ON a.OPEID = s.OPEID
	WHERE a.SAT_AVG_ALL IS NOT NULL
	GROUP BY s.STABBR
	ORDER BY ADM_SAT_AVG ASC
LIMIT 1;


-- 3. Get the religious affiliation that has the highest admissions standards (least percent admitted)
SELECT r.RELAFFIL_VALUE AS 'RELIGIOUS AFFILIATION', AVG(a.ADM_RATE_ALL) AS ADM_RATE_AVG
	FROM admissions a
		INNER JOIN school s
			ON a.OPEID = s.OPEID
		INNER JOIN relaffil r
			ON s.RELAFFIL = r.RELAFFIL_ID
	WHERE 
		a.ADM_RATE_ALL IS NOT NULL
		AND s.RELAFFIL IS NOT NULL
	GROUP BY s.RELAFFIL
	ORDER BY ADM_RATE_AVG ASC
LIMIT 1;


-- 4. Which locale type has the highest percentage of white students?
SELECT locale.LOCALE_VALUE AS 'LOCALE', AVG(student.UGDS_WHITE) AS WHITE_AVG  
	FROM student
		INNER JOIN school 
			ON student.OPEID = school.OPEID
		INNER JOIN locale 
			ON school.LOCALE = locale.LOCALE_ID
	WHERE 
		student.UGDS_WHITE IS NOT NULL
		AND school.LOCALE IS NOT NULL
	GROUP BY school.LOCALE
	ORDER BY WHITE_AVG DESC
LIMIT 1;


-- 5. Which region has the highest percentage of military veteran students?
SELECT region.REGION_VALUE AS 'REGION', AVG(student.VETERAN) AS VET_AVG  
	FROM student
		INNER JOIN school 
			ON student.OPEID = school.OPEID
		INNER JOIN region 
			ON school.REGION = region.REGION_ID
	WHERE 
		student.VETERAN IS NOT NULL
		AND school.REGION IS NOT NULL
	GROUP BY school.REGION
	ORDER BY VET_AVG DESC
LIMIT 1;


-- 6. Show a list of non-religiously affiliated schools, and the difference between in-state and out-of-state tuition. (Show only the top ten rows).
SELECT s.INSTNM, c.TUITIONFEE_IN as 'TUITION IN-STATE', c.TUITIONFEE_OUT as 'TUITION OUT-STATE', c.TUITIONFEE_OUT - c.TUITIONFEE_IN as 'DIFFERENCE'
	FROM school s
		INNER JOIN cost c
			ON s.OPEID = c.OPEID
	WHERE 
		(s.RELAFFIL IS NULL -- No religious affiliation
			OR s.RELAFFIL = -2) -- Religious affiliation is not applicable
		AND c.TUITIONFEE_IN IS NOT NULL
		AND c.TUITIONFEE_OUT IS NOT NULL
	GROUP BY s.INSTNM
LIMIT 10;
