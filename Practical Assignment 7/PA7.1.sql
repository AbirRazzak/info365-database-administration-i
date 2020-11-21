-- 1. Show each institution's name, with the religious affiliation for all religious institutions. (Show only the first 10 rows.)
select s.INSTNM, r.RELAFFIL_VALUE
from school s
inner join relaffil r 
	on r.relaffil_id = s.relaffil
limit 10;


-- 2. Show each institution's name, with the religious affiliation, even if the college has no listed religious affiliation.  (Show only the first 10 rows.)
select s.INSTNM, r.RELAFFIL_VALUE
from school s
left join relaffil r 
	on r.relaffil_id = s.relaffil
limit 10;


-- 3. Show each institution's name, along with the name of their region, for colleges located in large cities, along with their longitude and latitude coordinates.  (Show only the first 10 rows.)
select s.INSTNM, region.REGION_VALUE, root.LONGITUDE, root.LATITUDE
from school s
inner join region
	on region.REGION_ID = s.REGION
inner join root
	on root.OPEID = s.OPEID
where s.locale =  (	select LOCALE_ID 
					from locale
					where locale.LOCALE_VALUE like 'City: Large%'
					limit 1)
limit 10;


-- 4. Show the top 20 institutions and the SAT averages, with the lowest admissions rates.
select school.INSTNM, admissions.SAT_AVG
from admissions
inner join school
	on school.OPEID = admissions.OPEID
where admissions.ADM_RATE is not null
order by admissions.ADM_RATE
limit 20;

-- 4. BONUS! (Remove institutions with no SAT average reported)
-- In my opinion, this dataset makes more sense to me because institutes with an admissions rate of 0 were appearing in the previous set
-- Chose to do it this way instead of doing "where admissions.adm_rate > 0" because what if there was an institute that happened to round down to 0? Highly unlikely, but it could be a very prestigious school, who knows?
select school.INSTNM, admissions.SAT_AVG
from admissions
inner join school
	on school.OPEID = admissions.OPEID
where 
	admissions.ADM_RATE is not null
    and admissions.SAT_AVG is not null
    -- and admissions.Report_Year = 2020 <- ideally, you should specify a year too, but it seems like my database has null as the report year for every row
order by admissions.ADM_RATE
limit 20;


-- 5. Show the top 20 institutions with the highest SAT averages.
select school.INSTNM
from admissions
inner join school
	on school.OPEID = admissions.OPEID
where admissions.SAT_AVG is not null
    -- and admissions.Report_Year = 2020 <- ideally, you should specify a year too, but it seems like my database has null as the report year for every row
order by admissions.SAT_AVG desc
limit 20;


-- 6. Show a combination of both the highest SAT averages, and lowest admissions, using a UNION. (Show only 30 rows.)
-- Grabs the top 15 highest SAT averages
( select school.INSTNM
	from admissions
	inner join school
		on school.OPEID = admissions.OPEID
	where admissions.SAT_AVG is not null
		-- and admissions.Report_Year = 2020 <- ideally, you should specify a year too, but it seems like my database has null as the report year for every row
	order by admissions.SAT_AVG desc
	limit 15)
union all -- combines both results regardless of duplicates (to make 30 rows in total)
-- Grabs the top 15 lowest admissions
( select school.INSTNM
	from admissions
	inner join school
		on school.OPEID = admissions.OPEID
	where 
		admissions.ADM_RATE is not null
		and admissions.SAT_AVG is not null
		-- and admissions.Report_Year = 2020 <- ideally, you should specify a year too, but it seems like my database has null as the report year for every row
	order by admissions.ADM_RATE
	limit 15);
