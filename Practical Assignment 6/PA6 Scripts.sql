-- Question 1
select s.INSTNM, s.CITY, s.STABBR, s.ACCREDAGENCY, d.DISTANCEONLY_VALUE
from school s, distanceonly d
where s.DISTANCEONLY = d.DISTANCEONLY_ID
limit 10;

-- Question 2 
select s.INSTNM, s.CITY, s.STABBR, s.ACCREDAGENCY, d.DISTANCEONLY_VALUE
from school s, distanceonly d
where s.DISTANCEONLY = d.DISTANCEONLY_ID
and (
s.STABBR = 'PA'
OR s.STABBR = 'NJ'
OR s.STABBR = 'DE'
)
limit 10;

-- Question 3
select s.INSTNM, s.CITY, s.STABBR, s.ACCREDAGENCY, d.DISTANCEONLY_VALUE
from school s, distanceonly d
where s.DISTANCEONLY = d.DISTANCEONLY_ID
and s.CITY = 'Philadelphia'
order by s.INSTNM
limit 10;

-- Question 4
select s.INSTNM
from school s
where(
s.STABBR = 'PA'
OR s.STABBR = 'NJ'
OR s.STABBR = 'DE'
)
and s.DISTANCEONLY = 1
order by s.INSTNM;

-- Question 5
select s.INSTNM, s.CITY, s.STABBR, s.INSTURL, d.DISTANCEONLY_VALUE
from school s, distanceonly d
where s.DISTANCEONLY = d.DISTANCEONLY_ID
and s.INSTURL not like '%.edu%'
and s.DISTANCEONLY=1;

-- Question 6 (not done)
select s.INSTNM, s.CITY, s.STABBR, s.ACCREDAGENCY, d.DISTANCEONLY_VALUE
from school s, distanceonly d
where s.DISTANCEONLY = d.DISTANCEONLY_ID
and s.STABBR = 'PA'
and (
s.ACCREDAGENCY like '%vocational%'
or s.ACCREDAGENCY like '%career%'
)
order by s.INSTNM;

-- Question 7
select s.ACCREDAGENCY
from school s
where s.STABBR = 'PA'
and s.ACCREDAGENCY not like '%Middle States Commission%';