CREATE OR REPLACE VIEW SchoolData AS
	SELECT 
		s.OPEID as 'Institution ID', 
		s.INSTNM as 'Institution Name', 
		s.ACCREDAGENCY as 'Crediting Agency', 
		s.INSTURL as 'Institution Website', 
		r.RELAFFIL_VALUE as 'Religious Affiliation', 
		l.LOCALE_VALUE as 'Institution Region',
		c.TUITIONFEE_IN as 'Tuition In-State',
		c.TUITIONFEE_OUT as 'Tuition Out-State',
		a.ADM_RATE as 'Administration Rate',
		a.SAT_AVG as 'SAT Average Score'
		FROM school s
			LEFT JOIN relaffil r
				ON s.RELAFFIL = r.RELAFFIL_ID
			LEFT JOIN locale l 
				ON s.LOCALE = l.LOCALE_ID
			LEFT JOIN cost c
				ON s.OPEID = c.OPEID 
			LEFT JOIN admissions a 
				ON s.OPEID = a.OPEID;
				
			
SELECT * FROM SchoolData WHERE `Institution ID` = 337100;