CREATE TABLE `main` (
	`MAIN_ID` INT NOT NULL,
	 `MAIN_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`MAIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `control` (
	`CONTROL_ID` INT NOT NULL,
	 `CONTROL_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`CONTROL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `st_fips` (
	`ST_FIPS_ID` INT NOT NULL,
	 `ST_FIPS_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`ST_FIPS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `region` (
	`REGION_ID` INT NOT NULL,
	 `REGION_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `locale` (
	`LOCALE_ID` INT NOT NULL,
	 `LOCALE_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`LOCALE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `locale2` (
	`LOCALE2_ID` INT NOT NULL,
	 `LOCALE2_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`LOCALE2_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `ccbasic` (
	`CCBASIC_ID` INT NOT NULL,
	 `CCBASIC_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`CCBASIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `ccugprof` (
	`CCUGPROF_ID` INT NOT NULL,
	 `CCUGPROF_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`CCUGPROF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `ccsizset` (
	`CCSIZSET_ID` INT NOT NULL,
	 `CCSIZSET_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`CCSIZSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `hbcu` (
	`HBCU_ID` INT NOT NULL,
	 `HBCU_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`HBCU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `pbi` (
	`PBI_ID` INT NOT NULL,
	 `PBI_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`PBI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `annhi` (
	`ANNHI_ID` INT NOT NULL,
	 `ANNHI_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`ANNHI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `tribal` (
	`TRIBAL_ID` INT NOT NULL,
	 `TRIBAL_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`TRIBAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `aanapii` (
	`AANAPII_ID` INT NOT NULL,
	 `AANAPII_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`AANAPII_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `hsi` (
	`HSI_ID` INT NOT NULL,
	 `HSI_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`HSI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `nanti` (
	`NANTI_ID` INT NOT NULL,
	 `NANTI_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`NANTI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `menonly` (
	`MENONLY_ID` INT NOT NULL,
	 `MENONLY_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`MENONLY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `womenonly` (
	`WOMENONLY_ID` INT NOT NULL,
	 `WOMENONLY_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`WOMENONLY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `relaffil` (
	`RELAFFIL_ID` INT NOT NULL,
	 `RELAFFIL_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`RELAFFIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `distanceonly` (
	`DISTANCEONLY_ID` INT NOT NULL,
	 `DISTANCEONLY_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`DISTANCEONLY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `curroper` (
	`CURROPER_ID` INT NOT NULL,
	 `CURROPER_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`CURROPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `iclevel` (
	`ICLEVEL_ID` INT NOT NULL,
	 `ICLEVEL_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`ICLEVEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

CREATE TABLE `openadmp` (
	`OPENADMP_ID` INT NOT NULL,
	 `OPENADMP_VALUE`
		VARCHAR(1024),
	 PRIMARY KEY (`OPENADMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT=': ';

 CREATE TABLE `root` (

	`root_ID` INT NOT NULL AUTO_INCREMENT,
	`UNITID` INT COMMENT
					'',
	`OPEID` INT COMMENT
					'',
	`OPEID6` INT COMMENT
					'',
	`LATITUDE` FLOAT(20,10) COMMENT
					'',
	`LONGITUDE` FLOAT(20,10) COMMENT
					'',
	`Report_Year` INT COMMENT 'Year data reported',
	PRIMARY KEY (`root_ID`),
	KEY(`OPEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 CREATE TABLE `school` (

	`school_ID` INT NOT NULL AUTO_INCREMENT,
	`OPEID` INT NOT NULL REFERENCES root(`OPEID`),
	`INSTNM` VARCHAR(2048) COMMENT
					'',
	`CITY` VARCHAR(2048) COMMENT
					'',
	`STABBR` VARCHAR(2048) COMMENT
					'',
	`ZIP` VARCHAR(2048) COMMENT
					'',
	`ACCREDAGENCY` VARCHAR(2048) COMMENT
					'',
	`INSTURL` VARCHAR(2048) COMMENT
					'',
	`NPCURL` VARCHAR(2048) COMMENT
					'',
	`SCH_DEG` INT COMMENT
					'',
	`HCM2` INT COMMENT
					'',
	`MAIN` INT COMMENT
					'' REFERENCES
					`main` (`MAIN_ID`),
	`NUMBRANCH` INT COMMENT
					'',
	`CONTROL` INT COMMENT
					'' REFERENCES
					`control` (`CONTROL_ID`),
	`ST_FIPS` INT COMMENT
					'' REFERENCES
					`st_fips` (`ST_FIPS_ID`),
	`REGION` INT COMMENT
					'' REFERENCES
					`region` (`REGION_ID`),
	`LOCALE` INT COMMENT
					'' REFERENCES
					`locale` (`LOCALE_ID`),
	`LOCALE2` INT COMMENT
					'' REFERENCES
					`locale2` (`LOCALE2_ID`),
	`CCBASIC` INT COMMENT
					'' REFERENCES
					`ccbasic` (`CCBASIC_ID`),
	`CCUGPROF` INT COMMENT
					'' REFERENCES
					`ccugprof` (`CCUGPROF_ID`),
	`CCSIZSET` INT COMMENT
					'' REFERENCES
					`ccsizset` (`CCSIZSET_ID`),
	`HBCU` INT COMMENT
					'' REFERENCES
					`hbcu` (`HBCU_ID`),
	`PBI` INT COMMENT
					'' REFERENCES
					`pbi` (`PBI_ID`),
	`ANNHI` INT COMMENT
					'' REFERENCES
					`annhi` (`ANNHI_ID`),
	`TRIBAL` INT COMMENT
					'' REFERENCES
					`tribal` (`TRIBAL_ID`),
	`AANAPII` INT COMMENT
					'' REFERENCES
					`aanapii` (`AANAPII_ID`),
	`HSI` INT COMMENT
					'' REFERENCES
					`hsi` (`HSI_ID`),
	`NANTI` INT COMMENT
					'' REFERENCES
					`nanti` (`NANTI_ID`),
	`MENONLY` INT COMMENT
					'' REFERENCES
					`menonly` (`MENONLY_ID`),
	`WOMENONLY` INT COMMENT
					'' REFERENCES
					`womenonly` (`WOMENONLY_ID`),
	`RELAFFIL` INT COMMENT
					'' REFERENCES
					`relaffil` (`RELAFFIL_ID`),
	`DISTANCEONLY` INT COMMENT
					'' REFERENCES
					`distanceonly` (`DISTANCEONLY_ID`),
	`CURROPER` INT COMMENT
					'' REFERENCES
					`curroper` (`CURROPER_ID`),
	`TUITFTE` INT COMMENT
					'',
	`INEXPFTE` INT COMMENT
					'',
	`AVGFACSAL` INT COMMENT
					'',
	`PFTFAC` FLOAT(20,10) COMMENT
					'',
	`ALIAS` VARCHAR(2048) COMMENT
					'',
	`ICLEVEL` INT COMMENT
					'' REFERENCES
					`iclevel` (`ICLEVEL_ID`),
	`OPENADMP` INT COMMENT
					'' REFERENCES
					`openadmp` (`OPENADMP_ID`),
	`ACCREDCODE` VARCHAR(2048) COMMENT
					'',
	`T4APPROVALDATE` VARCHAR(2048) COMMENT
					'',
	`Report_Year` INT COMMENT 'Year data reported',
	PRIMARY KEY (`school_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 CREATE TABLE `admissions` (

	`admissions_ID` INT NOT NULL AUTO_INCREMENT,
	`OPEID` INT NOT NULL REFERENCES root(`OPEID`),
	`ADM_RATE` FLOAT(20,10) COMMENT
					'',
	`ADM_RATE_ALL` FLOAT(20,10) COMMENT
					'',
	`SATVR25` FLOAT(20,10) COMMENT
					'',
	`SATVR75` FLOAT(20,10) COMMENT
					'',
	`SATMT25` FLOAT(20,10) COMMENT
					'',
	`SATMT75` FLOAT(20,10) COMMENT
					'',
	`SATWR25` FLOAT(20,10) COMMENT
					'',
	`SATWR75` FLOAT(20,10) COMMENT
					'',
	`SATVRMID` FLOAT(20,10) COMMENT
					'',
	`SATMTMID` FLOAT(20,10) COMMENT
					'',
	`SATWRMID` FLOAT(20,10) COMMENT
					'',
	`ACTCM25` FLOAT(20,10) COMMENT
					'',
	`ACTCM75` FLOAT(20,10) COMMENT
					'',
	`ACTEN25` FLOAT(20,10) COMMENT
					'',
	`ACTEN75` FLOAT(20,10) COMMENT
					'',
	`ACTMT25` FLOAT(20,10) COMMENT
					'',
	`ACTMT75` FLOAT(20,10) COMMENT
					'',
	`ACTWR25` FLOAT(20,10) COMMENT
					'',
	`ACTWR75` FLOAT(20,10) COMMENT
					'',
	`ACTCMMID` FLOAT(20,10) COMMENT
					'',
	`ACTENMID` FLOAT(20,10) COMMENT
					'',
	`ACTMTMID` FLOAT(20,10) COMMENT
					'',
	`ACTWRMID` FLOAT(20,10) COMMENT
					'',
	`SAT_AVG` FLOAT(20,10) COMMENT
					'',
	`SAT_AVG_ALL` FLOAT(20,10) COMMENT
					'',
	`Report_Year` INT COMMENT 'Year data reported',
	PRIMARY KEY (`admissions_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 CREATE TABLE `academics` (

	`academics_ID` INT NOT NULL AUTO_INCREMENT,
	`OPEID` INT NOT NULL REFERENCES root(`OPEID`),
	`PCIP01` FLOAT(20,10) COMMENT
					'',
	`PCIP03` FLOAT(20,10) COMMENT
					'',
	`PCIP04` FLOAT(20,10) COMMENT
					'',
	`PCIP05` FLOAT(20,10) COMMENT
					'',
	`PCIP09` FLOAT(20,10) COMMENT
					'',
	`PCIP10` FLOAT(20,10) COMMENT
					'',
	`PCIP11` FLOAT(20,10) COMMENT
					'',
	`PCIP12` FLOAT(20,10) COMMENT
					'',
	`PCIP13` FLOAT(20,10) COMMENT
					'',
	`PCIP14` FLOAT(20,10) COMMENT
					'',
	`PCIP15` FLOAT(20,10) COMMENT
					'',
	`PCIP16` FLOAT(20,10) COMMENT
					'',
	`PCIP19` FLOAT(20,10) COMMENT
					'',
	`PCIP22` FLOAT(20,10) COMMENT
					'',
	`PCIP23` FLOAT(20,10) COMMENT
					'',
	`PCIP24` FLOAT(20,10) COMMENT
					'',
	`PCIP25` FLOAT(20,10) COMMENT
					'',
	`PCIP26` FLOAT(20,10) COMMENT
					'',
	`PCIP27` FLOAT(20,10) COMMENT
					'',
	`PCIP29` FLOAT(20,10) COMMENT
					'',
	`PCIP30` FLOAT(20,10) COMMENT
					'',
	`PCIP31` FLOAT(20,10) COMMENT
					'',
	`PCIP38` FLOAT(20,10) COMMENT
					'',
	`PCIP39` FLOAT(20,10) COMMENT
					'',
	`PCIP40` FLOAT(20,10) COMMENT
					'',
	`PCIP41` FLOAT(20,10) COMMENT
					'',
	`PCIP42` FLOAT(20,10) COMMENT
					'',
	`PCIP43` FLOAT(20,10) COMMENT
					'',
	`PCIP44` FLOAT(20,10) COMMENT
					'',
	`PCIP45` FLOAT(20,10) COMMENT
					'',
	`PCIP46` FLOAT(20,10) COMMENT
					'',
	`PCIP47` FLOAT(20,10) COMMENT
					'',
	`PCIP48` FLOAT(20,10) COMMENT
					'',
	`PCIP49` FLOAT(20,10) COMMENT
					'',
	`PCIP50` FLOAT(20,10) COMMENT
					'',
	`PCIP51` FLOAT(20,10) COMMENT
					'',
	`PCIP52` FLOAT(20,10) COMMENT
					'',
	`PCIP54` FLOAT(20,10) COMMENT
					'',
	`CIP01CERT1` INT COMMENT
					'',
	`CIP01CERT2` INT COMMENT
					'',
	`CIP01ASSOC` INT COMMENT
					'',
	`CIP01CERT4` INT COMMENT
					'',
	`CIP01BACHL` INT COMMENT
					'',
	`CIP03CERT1` INT COMMENT
					'',
	`CIP03CERT2` INT COMMENT
					'',
	`CIP03ASSOC` INT COMMENT
					'',
	`CIP03CERT4` INT COMMENT
					'',
	`CIP03BACHL` INT COMMENT
					'',
	`CIP04CERT1` INT COMMENT
					'',
	`CIP04CERT2` INT COMMENT
					'',
	`CIP04ASSOC` INT COMMENT
					'',
	`CIP04CERT4` INT COMMENT
					'',
	`CIP04BACHL` INT COMMENT
					'',
	`CIP05CERT1` INT COMMENT
					'',
	`CIP05CERT2` INT COMMENT
					'',
	`CIP05ASSOC` INT COMMENT
					'',
	`CIP05CERT4` INT COMMENT
					'',
	`CIP05BACHL` INT COMMENT
					'',
	`CIP09CERT1` INT COMMENT
					'',
	`CIP09CERT2` INT COMMENT
					'',
	`CIP09ASSOC` INT COMMENT
					'',
	`CIP09CERT4` INT COMMENT
					'',
	`CIP09BACHL` INT COMMENT
					'',
	`CIP10CERT1` INT COMMENT
					'',
	`CIP10CERT2` INT COMMENT
					'',
	`CIP10ASSOC` INT COMMENT
					'',
	`CIP10CERT4` INT COMMENT
					'',
	`CIP10BACHL` INT COMMENT
					'',
	`CIP11CERT1` INT COMMENT
					'',
	`CIP11CERT2` INT COMMENT
					'',
	`CIP11ASSOC` INT COMMENT
					'',
	`CIP11CERT4` INT COMMENT
					'',
	`CIP11BACHL` INT COMMENT
					'',
	`CIP12CERT1` INT COMMENT
					'',
	`CIP12CERT2` INT COMMENT
					'',
	`CIP12ASSOC` INT COMMENT
					'',
	`CIP12CERT4` INT COMMENT
					'',
	`CIP12BACHL` INT COMMENT
					'',
	`CIP13CERT1` INT COMMENT
					'',
	`CIP13CERT2` INT COMMENT
					'',
	`CIP13ASSOC` INT COMMENT
					'',
	`CIP13CERT4` INT COMMENT
					'',
	`CIP13BACHL` INT COMMENT
					'',
	`CIP14CERT1` INT COMMENT
					'',
	`CIP14CERT2` INT COMMENT
					'',
	`CIP14ASSOC` INT COMMENT
					'',
	`CIP14CERT4` INT COMMENT
					'',
	`CIP14BACHL` INT COMMENT
					'',
	`CIP15CERT1` INT COMMENT
					'',
	`CIP15CERT2` INT COMMENT
					'',
	`CIP15ASSOC` INT COMMENT
					'',
	`CIP15CERT4` INT COMMENT
					'',
	`CIP15BACHL` INT COMMENT
					'',
	`CIP16CERT1` INT COMMENT
					'',
	`CIP16CERT2` INT COMMENT
					'',
	`CIP16ASSOC` INT COMMENT
					'',
	`CIP16CERT4` INT COMMENT
					'',
	`CIP16BACHL` INT COMMENT
					'',
	`CIP19CERT1` INT COMMENT
					'',
	`CIP19CERT2` INT COMMENT
					'',
	`CIP19ASSOC` INT COMMENT
					'',
	`CIP19CERT4` INT COMMENT
					'',
	`CIP19BACHL` INT COMMENT
					'',
	`CIP22CERT1` INT COMMENT
					'',
	`CIP22CERT2` INT COMMENT
					'',
	`CIP22ASSOC` INT COMMENT
					'',
	`CIP22CERT4` INT COMMENT
					'',
	`CIP22BACHL` INT COMMENT
					'',
	`CIP23CERT1` INT COMMENT
					'',
	`CIP23CERT2` INT COMMENT
					'',
	`CIP23ASSOC` INT COMMENT
					'',
	`CIP23CERT4` INT COMMENT
					'',
	`CIP23BACHL` INT COMMENT
					'',
	`CIP24CERT1` INT COMMENT
					'',
	`CIP24CERT2` INT COMMENT
					'',
	`CIP24ASSOC` INT COMMENT
					'',
	`CIP24CERT4` INT COMMENT
					'',
	`CIP24BACHL` INT COMMENT
					'',
	`CIP25CERT1` INT COMMENT
					'',
	`CIP25CERT2` INT COMMENT
					'',
	`CIP25ASSOC` INT COMMENT
					'',
	`CIP25CERT4` INT COMMENT
					'',
	`CIP25BACHL` INT COMMENT
					'',
	`CIP26CERT1` INT COMMENT
					'',
	`CIP26CERT2` INT COMMENT
					'',
	`CIP26ASSOC` INT COMMENT
					'',
	`CIP26CERT4` INT COMMENT
					'',
	`CIP26BACHL` INT COMMENT
					'',
	`CIP27CERT1` INT COMMENT
					'',
	`CIP27CERT2` INT COMMENT
					'',
	`CIP27ASSOC` INT COMMENT
					'',
	`CIP27CERT4` INT COMMENT
					'',
	`CIP27BACHL` INT COMMENT
					'',
	`CIP29CERT1` INT COMMENT
					'',
	`CIP29CERT2` INT COMMENT
					'',
	`CIP29ASSOC` INT COMMENT
					'',
	`CIP29CERT4` INT COMMENT
					'',
	`CIP29BACHL` INT COMMENT
					'',
	`CIP30CERT1` INT COMMENT
					'',
	`CIP30CERT2` INT COMMENT
					'',
	`CIP30ASSOC` INT COMMENT
					'',
	`CIP30CERT4` INT COMMENT
					'',
	`CIP30BACHL` INT COMMENT
					'',
	`CIP31CERT1` INT COMMENT
					'',
	`CIP31CERT2` INT COMMENT
					'',
	`CIP31ASSOC` INT COMMENT
					'',
	`CIP31CERT4` INT COMMENT
					'',
	`CIP31BACHL` INT COMMENT
					'',
	`CIP38CERT1` INT COMMENT
					'',
	`CIP38CERT2` INT COMMENT
					'',
	`CIP38ASSOC` INT COMMENT
					'',
	`CIP38CERT4` INT COMMENT
					'',
	`CIP38BACHL` INT COMMENT
					'',
	`CIP39CERT1` INT COMMENT
					'',
	`CIP39CERT2` INT COMMENT
					'',
	`CIP39ASSOC` INT COMMENT
					'',
	`CIP39CERT4` INT COMMENT
					'',
	`CIP39BACHL` INT COMMENT
					'',
	`CIP40CERT1` INT COMMENT
					'',
	`CIP40CERT2` INT COMMENT
					'',
	`CIP40ASSOC` INT COMMENT
					'',
	`CIP40CERT4` INT COMMENT
					'',
	`CIP40BACHL` INT COMMENT
					'',
	`CIP41CERT1` INT COMMENT
					'',
	`CIP41CERT2` INT COMMENT
					'',
	`CIP41ASSOC` INT COMMENT
					'',
	`CIP41CERT4` INT COMMENT
					'',
	`CIP41BACHL` INT COMMENT
					'',
	`CIP42CERT1` INT COMMENT
					'',
	`CIP42CERT2` INT COMMENT
					'',
	`CIP42ASSOC` INT COMMENT
					'',
	`CIP42CERT4` INT COMMENT
					'',
	`CIP42BACHL` INT COMMENT
					'',
	`CIP43CERT1` INT COMMENT
					'',
	`CIP43CERT2` INT COMMENT
					'',
	`CIP43ASSOC` INT COMMENT
					'',
	`CIP43CERT4` INT COMMENT
					'',
	`CIP43BACHL` INT COMMENT
					'',
	`CIP44CERT1` INT COMMENT
					'',
	`CIP44CERT2` INT COMMENT
					'',
	`CIP44ASSOC` INT COMMENT
					'',
	`CIP44CERT4` INT COMMENT
					'',
	`CIP44BACHL` INT COMMENT
					'',
	`CIP45CERT1` INT COMMENT
					'',
	`CIP45CERT2` INT COMMENT
					'',
	`CIP45ASSOC` INT COMMENT
					'',
	`CIP45CERT4` INT COMMENT
					'',
	`CIP45BACHL` INT COMMENT
					'',
	`CIP46CERT1` INT COMMENT
					'',
	`CIP46CERT2` INT COMMENT
					'',
	`CIP46ASSOC` INT COMMENT
					'',
	`CIP46CERT4` INT COMMENT
					'',
	`CIP46BACHL` INT COMMENT
					'',
	`CIP47CERT1` INT COMMENT
					'',
	`CIP47CERT2` INT COMMENT
					'',
	`CIP47ASSOC` INT COMMENT
					'',
	`CIP47CERT4` INT COMMENT
					'',
	`CIP47BACHL` INT COMMENT
					'',
	`CIP48CERT1` INT COMMENT
					'',
	`CIP48CERT2` INT COMMENT
					'',
	`CIP48ASSOC` INT COMMENT
					'',
	`CIP48CERT4` INT COMMENT
					'',
	`CIP48BACHL` INT COMMENT
					'',
	`CIP49CERT1` INT COMMENT
					'',
	`CIP49CERT2` INT COMMENT
					'',
	`CIP49ASSOC` INT COMMENT
					'',
	`CIP49CERT4` INT COMMENT
					'',
	`CIP49BACHL` INT COMMENT
					'',
	`CIP50CERT1` INT COMMENT
					'',
	`CIP50CERT2` INT COMMENT
					'',
	`CIP50ASSOC` INT COMMENT
					'',
	`CIP50CERT4` INT COMMENT
					'',
	`CIP50BACHL` INT COMMENT
					'',
	`CIP51CERT1` INT COMMENT
					'',
	`CIP51CERT2` INT COMMENT
					'',
	`CIP51ASSOC` INT COMMENT
					'',
	`CIP51CERT4` INT COMMENT
					'',
	`CIP51BACHL` INT COMMENT
					'',
	`CIP52CERT1` INT COMMENT
					'',
	`CIP52CERT2` INT COMMENT
					'',
	`CIP52ASSOC` INT COMMENT
					'',
	`CIP52CERT4` INT COMMENT
					'',
	`CIP52BACHL` INT COMMENT
					'',
	`CIP54CERT1` INT COMMENT
					'',
	`CIP54CERT2` INT COMMENT
					'',
	`CIP54ASSOC` INT COMMENT
					'',
	`CIP54CERT4` INT COMMENT
					'',
	`CIP54BACHL` INT COMMENT
					'',
	`Report_Year` INT COMMENT 'Year data reported',
	PRIMARY KEY (`academics_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 CREATE TABLE `student` (

	`student_ID` INT NOT NULL AUTO_INCREMENT,
	`OPEID` INT NOT NULL REFERENCES root(`OPEID`),
	`UGDS` INT COMMENT
					'',
	`UG` INT COMMENT
					'',
	`UGDS_WHITE` FLOAT(20,10) COMMENT
					'',
	`UGDS_BLACK` FLOAT(20,10) COMMENT
					'',
	`UGDS_HISP` FLOAT(20,10) COMMENT
					'',
	`UGDS_ASIAN` FLOAT(20,10) COMMENT
					'',
	`UGDS_AIAN` FLOAT(20,10) COMMENT
					'',
	`UGDS_NHPI` FLOAT(20,10) COMMENT
					'',
	`UGDS_2MOR` FLOAT(20,10) COMMENT
					'',
	`UGDS_NRA` FLOAT(20,10) COMMENT
					'',
	`UGDS_UNKN` FLOAT(20,10) COMMENT
					'',
	`UGDS_WHITENH` FLOAT(20,10) COMMENT
					'',
	`UGDS_BLACKNH` FLOAT(20,10) COMMENT
					'',
	`UGDS_API` FLOAT(20,10) COMMENT
					'',
	`UGDS_AIANOLD` FLOAT(20,10) COMMENT
					'',
	`UGDS_HISPOLD` FLOAT(20,10) COMMENT
					'',
	`UG_NRA` FLOAT(20,10) COMMENT
					'',
	`UG_UNKN` FLOAT(20,10) COMMENT
					'',
	`UG_WHITENH` FLOAT(20,10) COMMENT
					'',
	`UG_BLACKNH` FLOAT(20,10) COMMENT
					'',
	`UG_API` FLOAT(20,10) COMMENT
					'',
	`UG_AIANOLD` FLOAT(20,10) COMMENT
					'',
	`UG_HISPOLD` FLOAT(20,10) COMMENT
					'',
	`PPTUG_EF` FLOAT(20,10) COMMENT
					'',
	`PPTUG_EF2` FLOAT(20,10) COMMENT
					'',
	`PFTFTUG1_EF` FLOAT(20,10) COMMENT
					'',
	`RET_FT4` FLOAT(20,10) COMMENT
					'',
	`RET_FTL4` FLOAT(20,10) COMMENT
					'',
	`RET_PT4` FLOAT(20,10) COMMENT
					'',
	`RET_PTL4` FLOAT(20,10) COMMENT
					'',
	`UG25ABV` FLOAT(20,10) COMMENT
					'',
	`INC_PCT_LO` FLOAT(20,10) COMMENT
					'',
	`DEP_STAT_PCT_IND` FLOAT(20,10) COMMENT
					'',
	`IND_INC_PCT_LO` FLOAT(20,10) COMMENT
					'',
	`DEP_INC_PCT_LO` FLOAT(20,10) COMMENT
					'',
	`PAR_ED_PCT_1STGEN` FLOAT(20,10) COMMENT
					'',
	`INC_PCT_M1` FLOAT(20,10) COMMENT
					'',
	`INC_PCT_M2` FLOAT(20,10) COMMENT
					'',
	`INC_PCT_H1` FLOAT(20,10) COMMENT
					'',
	`INC_PCT_H2` FLOAT(20,10) COMMENT
					'',
	`DEP_INC_PCT_M1` FLOAT(20,10) COMMENT
					'',
	`DEP_INC_PCT_M2` FLOAT(20,10) COMMENT
					'',
	`DEP_INC_PCT_H1` FLOAT(20,10) COMMENT
					'',
	`DEP_INC_PCT_H2` FLOAT(20,10) COMMENT
					'',
	`IND_INC_PCT_M1` FLOAT(20,10) COMMENT
					'',
	`IND_INC_PCT_M2` FLOAT(20,10) COMMENT
					'',
	`IND_INC_PCT_H1` FLOAT(20,10) COMMENT
					'',
	`IND_INC_PCT_H2` FLOAT(20,10) COMMENT
					'',
	`PAR_ED_PCT_MS` FLOAT(20,10) COMMENT
					'',
	`PAR_ED_PCT_HS` FLOAT(20,10) COMMENT
					'',
	`PAR_ED_PCT_PS` FLOAT(20,10) COMMENT
					'',
	`APPL_SCH_PCT_GE2` FLOAT(20,10) COMMENT
					'',
	`APPL_SCH_PCT_GE3` FLOAT(20,10) COMMENT
					'',
	`APPL_SCH_PCT_GE4` FLOAT(20,10) COMMENT
					'',
	`APPL_SCH_PCT_GE5` FLOAT(20,10) COMMENT
					'',
	`DEP_INC_AVG` INT COMMENT
					'',
	`IND_INC_AVG` INT COMMENT
					'',
	`INC_N` INT COMMENT
					'',
	`DEP_INC_N` INT COMMENT
					'',
	`IND_INC_N` INT COMMENT
					'',
	`DEP_STAT_N` INT COMMENT
					'',
	`PAR_ED_N` INT COMMENT
					'',
	`APPL_SCH_N` INT COMMENT
					'',
	`PELL_EVER` FLOAT(20,10) COMMENT
					'',
	`AGE_ENTRY` INT COMMENT
					'',
	`AGE_ENTRY_SQ` INT COMMENT
					'',
	`AGEGE24` FLOAT(20,10) COMMENT
					'',
	`FEMALE` FLOAT(20,10) COMMENT
					'',
	`MARRIED` FLOAT(20,10) COMMENT
					'',
	`DEPENDENT` FLOAT(20,10) COMMENT
					'',
	`VETERAN` FLOAT(20,10) COMMENT
					'',
	`FIRST_GEN` FLOAT(20,10) COMMENT
					'',
	`FAMINC` INT COMMENT
					'',
	`MD_FAMINC` INT COMMENT
					'',
	`FAMINC_IND` INT COMMENT
					'',
	`LNFAMINC` INT COMMENT
					'',
	`LNFAMINC_IND` INT COMMENT
					'',
	`PCT_WHITE` FLOAT(20,10) COMMENT
					'',
	`PCT_BLACK` FLOAT(20,10) COMMENT
					'',
	`PCT_ASIAN` FLOAT(20,10) COMMENT
					'',
	`PCT_HISPANIC` FLOAT(20,10) COMMENT
					'',
	`PCT_BA` FLOAT(20,10) COMMENT
					'',
	`PCT_GRAD_PROF` FLOAT(20,10) COMMENT
					'',
	`PCT_BORN_US` FLOAT(20,10) COMMENT
					'',
	`MEDIAN_HH_INC` INT COMMENT
					'',
	`POVERTY_RATE` FLOAT(20,10) COMMENT
					'',
	`UNEMP_RATE` FLOAT(20,10) COMMENT
					'',
	`LN_MEDIAN_HH_INC` INT COMMENT
					'',
	`FSEND_COUNT` INT COMMENT
					'',
	`FSEND_1` FLOAT(20,10) COMMENT
					'',
	`FSEND_2` FLOAT(20,10) COMMENT
					'',
	`FSEND_3` FLOAT(20,10) COMMENT
					'',
	`FSEND_4` FLOAT(20,10) COMMENT
					'',
	`FSEND_5` FLOAT(20,10) COMMENT
					'',
	`UGDS_MEN` FLOAT(20,10) COMMENT
					'',
	`UGDS_WOMEN` FLOAT(20,10) COMMENT
					'',
	`D_PCTPELL_PCTFLOAN` INT COMMENT
					'',
	`UGNONDS` INT COMMENT
					'',
	`GRADS` INT COMMENT
					'',
	`RET_FT4_POOLED` FLOAT(20,10) COMMENT
					'',
	`RET_FTL4_POOLED` FLOAT(20,10) COMMENT
					'',
	`RET_PT4_POOLED` FLOAT(20,10) COMMENT
					'',
	`RET_PTL4_POOLED` FLOAT(20,10) COMMENT
					'',
	`RET_FT_DEN4_POOLED` FLOAT(20,10) COMMENT
					'',
	`RET_FT_DENL4_POOLED` FLOAT(20,10) COMMENT
					'',
	`RET_PT_DEN4_POOLED` FLOAT(20,10) COMMENT
					'',
	`RET_PT_DENL4_POOLED` FLOAT(20,10) COMMENT
					'',
	`POOLYRSRET_FT` INT COMMENT
					'',
	`POOLYRSRET_PT` INT COMMENT
					'',
	`RET_FT4_POOLED_SUPP` FLOAT(20,10) COMMENT
					'',
	`RET_FTL4_POOLED_SUPP` FLOAT(20,10) COMMENT
					'',
	`RET_PT4_POOLED_SUPP` FLOAT(20,10) COMMENT
					'',
	`RET_PTL4_POOLED_SUPP` FLOAT(20,10) COMMENT
					'',
	`Report_Year` INT COMMENT 'Year data reported',
	PRIMARY KEY (`student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 CREATE TABLE `cost` (

	`cost_ID` INT NOT NULL AUTO_INCREMENT,
	`OPEID` INT NOT NULL REFERENCES root(`OPEID`),
	`NPT4_PUB` INT COMMENT
					'',
	`NPT4_PRIV` INT COMMENT
					'',
	`NPT4_PROG` INT COMMENT
					'',
	`NPT4_OTHER` INT COMMENT
					'',
	`NPT41_PUB` INT COMMENT
					'',
	`NPT42_PUB` INT COMMENT
					'',
	`NPT43_PUB` INT COMMENT
					'',
	`NPT44_PUB` INT COMMENT
					'',
	`NPT45_PUB` INT COMMENT
					'',
	`NPT41_PRIV` INT COMMENT
					'',
	`NPT42_PRIV` INT COMMENT
					'',
	`NPT43_PRIV` INT COMMENT
					'',
	`NPT44_PRIV` INT COMMENT
					'',
	`NPT45_PRIV` INT COMMENT
					'',
	`NPT41_PROG` INT COMMENT
					'',
	`NPT42_PROG` INT COMMENT
					'',
	`NPT43_PROG` INT COMMENT
					'',
	`NPT44_PROG` INT COMMENT
					'',
	`NPT45_PROG` INT COMMENT
					'',
	`NPT41_OTHER` INT COMMENT
					'',
	`NPT42_OTHER` INT COMMENT
					'',
	`NPT43_OTHER` INT COMMENT
					'',
	`NPT44_OTHER` INT COMMENT
					'',
	`NPT45_OTHER` INT COMMENT
					'',
	`NPT4_048_PUB` INT COMMENT
					'',
	`NPT4_048_PRIV` INT COMMENT
					'',
	`NPT4_048_PROG` INT COMMENT
					'',
	`NPT4_048_OTHER` INT COMMENT
					'',
	`NPT4_3075_PUB` INT COMMENT
					'',
	`NPT4_3075_PRIV` INT COMMENT
					'',
	`NPT4_75UP_PUB` INT COMMENT
					'',
	`NPT4_75UP_PRIV` INT COMMENT
					'',
	`NPT4_3075_PROG` INT COMMENT
					'',
	`NPT4_3075_OTHER` INT COMMENT
					'',
	`NPT4_75UP_PROG` INT COMMENT
					'',
	`NPT4_75UP_OTHER` INT COMMENT
					'',
	`NUM4_PUB` INT COMMENT
					'',
	`NUM4_PRIV` INT COMMENT
					'',
	`NUM4_PROG` INT COMMENT
					'',
	`NUM4_OTHER` INT COMMENT
					'',
	`NUM41_PUB` INT COMMENT
					'',
	`NUM42_PUB` INT COMMENT
					'',
	`NUM43_PUB` INT COMMENT
					'',
	`NUM44_PUB` INT COMMENT
					'',
	`NUM45_PUB` INT COMMENT
					'',
	`NUM41_PRIV` INT COMMENT
					'',
	`NUM42_PRIV` INT COMMENT
					'',
	`NUM43_PRIV` INT COMMENT
					'',
	`NUM44_PRIV` INT COMMENT
					'',
	`NUM45_PRIV` INT COMMENT
					'',
	`NUM41_PROG` INT COMMENT
					'',
	`NUM42_PROG` INT COMMENT
					'',
	`NUM43_PROG` INT COMMENT
					'',
	`NUM44_PROG` INT COMMENT
					'',
	`NUM45_PROG` INT COMMENT
					'',
	`NUM41_OTHER` INT COMMENT
					'',
	`NUM42_OTHER` INT COMMENT
					'',
	`NUM43_OTHER` INT COMMENT
					'',
	`NUM44_OTHER` INT COMMENT
					'',
	`NUM45_OTHER` INT COMMENT
					'',
	`COSTT4_A` INT COMMENT
					'',
	`COSTT4_P` INT COMMENT
					'',
	`TUITIONFEE_IN` INT COMMENT
					'',
	`TUITIONFEE_OUT` INT COMMENT
					'',
	`TUITIONFEE_PROG` INT COMMENT
					'',
	`Report_Year` INT COMMENT 'Year data reported',
	PRIMARY KEY (`cost_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 CREATE TABLE `aid` (

	`aid_ID` INT NOT NULL AUTO_INCREMENT,
	`OPEID` INT NOT NULL REFERENCES root(`OPEID`),
	`PCTPELL` FLOAT(20,10) COMMENT
					'',
	`PCTFLOAN` FLOAT(20,10) COMMENT
					'',
	`DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`GRAD_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`WDRAW_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`LO_INC_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`MD_INC_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`HI_INC_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`DEP_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`IND_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`PELL_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`NOPELL_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`FEMALE_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`MALE_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`FIRSTGEN_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`NOTFIRSTGEN_DEBT_MDN` FLOAT(20,10) COMMENT
					'',
	`DEBT_N` INT COMMENT
					'',
	`GRAD_DEBT_N` INT COMMENT
					'',
	`WDRAW_DEBT_N` INT COMMENT
					'',
	`LO_INC_DEBT_N` INT COMMENT
					'',
	`MD_INC_DEBT_N` INT COMMENT
					'',
	`HI_INC_DEBT_N` INT COMMENT
					'',
	`DEP_DEBT_N` INT COMMENT
					'',
	`IND_DEBT_N` INT COMMENT
					'',
	`PELL_DEBT_N` INT COMMENT
					'',
	`NOPELL_DEBT_N` INT COMMENT
					'',
	`FEMALE_DEBT_N` INT COMMENT
					'',
	`MALE_DEBT_N` INT COMMENT
					'',
	`FIRSTGEN_DEBT_N` INT COMMENT
					'',
	`NOTFIRSTGEN_DEBT_N` INT COMMENT
					'',
	`GRAD_DEBT_MDN10YR` FLOAT(20,10) COMMENT
					'',
	`CUML_DEBT_N` INT COMMENT
					'',
	`CUML_DEBT_P90` INT COMMENT
					'',
	`CUML_DEBT_P75` INT COMMENT
					'',
	`CUML_DEBT_P25` INT COMMENT
					'',
	`CUML_DEBT_P10` INT COMMENT
					'',
	`LOAN_EVER` FLOAT(20,10) COMMENT
					'',
	`DEBT_MDN_SUPP` FLOAT(20,10) COMMENT
					'',
	`GRAD_DEBT_MDN_SUPP` FLOAT(20,10) COMMENT
					'',
	`GRAD_DEBT_MDN10YR_SUPP` FLOAT(20,10) COMMENT
					'',
	`Report_Year` INT COMMENT 'Year data reported',
	PRIMARY KEY (`aid_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 CREATE TABLE `repayment` (

	`repayment_ID` INT NOT NULL AUTO_INCREMENT,
	`OPEID` INT NOT NULL REFERENCES root(`OPEID`),
	`CDR2` FLOAT(20,10) COMMENT
					'',
	`CDR3` FLOAT(20,10) COMMENT
					'',
	`RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`COMPL_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`NONCOM_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`LO_INC_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`MD_INC_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`HI_INC_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`DEP_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`IND_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`PELL_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`NOPELL_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`FEMALE_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`MALE_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`FIRSTGEN_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`NOTFIRSTGEN_RPY_1YR_RT` FLOAT(20,10) COMMENT
					'',
	`RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`COMPL_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`NONCOM_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`LO_INC_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`MD_INC_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`HI_INC_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`DEP_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`IND_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`PELL_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`NOPELL_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`FEMALE_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`MALE_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`FIRSTGEN_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`NOTFIRSTGEN_RPY_3YR_RT` FLOAT(20,10) COMMENT
					'',
	`RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`COMPL_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`NONCOM_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`LO_INC_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`MD_INC_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`HI_INC_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`DEP_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`IND_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`PELL_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`NOPELL_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`FEMALE_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`MALE_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`FIRSTGEN_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`NOTFIRSTGEN_RPY_5YR_RT` FLOAT(20,10) COMMENT
					'',
	`RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`COMPL_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`NONCOM_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`LO_INC_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`MD_INC_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`HI_INC_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`DEP_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`IND_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`PELL_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`NOPELL_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`FEMALE_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`MALE_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`FIRSTGEN_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`NOTFIRSTGEN_RPY_7YR_RT` FLOAT(20,10) COMMENT
					'',
	`REPAY_DT_MDN` VARCHAR(2048) COMMENT
					'',
	`REPAY_DT_N` INT COMMENT
					'',
	`RPY_1YR_N` INT COMMENT
					'',
	`COMPL_RPY_1YR_N` INT COMMENT
					'',
	`NONCOM_RPY_1YR_N` INT COMMENT
					'',
	`LO_INC_RPY_1YR_N` INT COMMENT
					'',
	`MD_INC_RPY_1YR_N` INT COMMENT
					'',
	`HI_INC_RPY_1YR_N` INT COMMENT
					'',
	`DEP_RPY_1YR_N` INT COMMENT
					'',
	`IND_RPY_1YR_N` INT COMMENT
					'',
	`PELL_RPY_1YR_N` INT COMMENT
					'',
	`NOPELL_RPY_1YR_N` INT COMMENT
					'',
	`FEMALE_RPY_1YR_N` INT COMMENT
					'',
	`MALE_RPY_1YR_N` INT COMMENT
					'',
	`FIRSTGEN_RPY_1YR_N` INT COMMENT
					'',
	`NOTFIRSTGEN_RPY_1YR_N` INT COMMENT
					'',
	`RPY_3YR_N` INT COMMENT
					'',
	`COMPL_RPY_3YR_N` INT COMMENT
					'',
	`NONCOM_RPY_3YR_N` INT COMMENT
					'',
	`LO_INC_RPY_3YR_N` INT COMMENT
					'',
	`MD_INC_RPY_3YR_N` INT COMMENT
					'',
	`HI_INC_RPY_3YR_N` INT COMMENT
					'',
	`DEP_RPY_3YR_N` INT COMMENT
					'',
	`IND_RPY_3YR_N` INT COMMENT
					'',
	`PELL_RPY_3YR_N` INT COMMENT
					'',
	`NOPELL_RPY_3YR_N` INT COMMENT
					'',
	`FEMALE_RPY_3YR_N` INT COMMENT
					'',
	`MALE_RPY_3YR_N` INT COMMENT
					'',
	`FIRSTGEN_RPY_3YR_N` INT COMMENT
					'',
	`NOTFIRSTGEN_RPY_3YR_N` INT COMMENT
					'',
	`RPY_5YR_N` INT COMMENT
					'',
	`COMPL_RPY_5YR_N` INT COMMENT
					'',
	`NONCOM_RPY_5YR_N` INT COMMENT
					'',
	`LO_INC_RPY_5YR_N` INT COMMENT
					'',
	`MD_INC_RPY_5YR_N` INT COMMENT
					'',
	`HI_INC_RPY_5YR_N` INT COMMENT
					'',
	`DEP_RPY_5YR_N` INT COMMENT
					'',
	`IND_RPY_5YR_N` INT COMMENT
					'',
	`PELL_RPY_5YR_N` INT COMMENT
					'',
	`NOPELL_RPY_5YR_N` INT COMMENT
					'',
	`FEMALE_RPY_5YR_N` INT COMMENT
					'',
	`MALE_RPY_5YR_N` INT COMMENT
					'',
	`FIRSTGEN_RPY_5YR_N` INT COMMENT
					'',
	`NOTFIRSTGEN_RPY_5YR_N` INT COMMENT
					'',
	`RPY_7YR_N` INT COMMENT
					'',
	`COMPL_RPY_7YR_N` INT COMMENT
					'',
	`NONCOM_RPY_7YR_N` INT COMMENT
					'',
	`LO_INC_RPY_7YR_N` INT COMMENT
					'',
	`MD_INC_RPY_7YR_N` INT COMMENT
					'',
	`HI_INC_RPY_7YR_N` INT COMMENT
					'',
	`DEP_RPY_7YR_N` INT COMMENT
					'',
	`IND_RPY_7YR_N` INT COMMENT
					'',
	`PELL_RPY_7YR_N` INT COMMENT
					'',
	`NOPELL_RPY_7YR_N` INT COMMENT
					'',
	`FEMALE_RPY_7YR_N` INT COMMENT
					'',
	`MALE_RPY_7YR_N` INT COMMENT
					'',
	`FIRSTGEN_RPY_7YR_N` INT COMMENT
					'',
	`NOTFIRSTGEN_RPY_7YR_N` INT COMMENT
					'',
	`RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`LO_INC_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`MD_INC_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`HI_INC_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`COMPL_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`NONCOM_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`DEP_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`IND_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`PELL_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`NOPELL_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`FEMALE_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`MALE_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`FIRSTGEN_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`NOTFIRSTGEN_RPY_3YR_RT_SUPP` FLOAT(20,10) COMMENT
					'',
	`CDR2_DENOM` INT COMMENT
					'',
	`CDR3_DENOM` INT COMMENT
					'',
	`Report_Year` INT COMMENT 'Year data reported',
	PRIMARY KEY (`repayment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 CREATE TABLE `earnings` (

	`earnings_ID` INT NOT NULL AUTO_INCREMENT,
	`OPEID` INT NOT NULL REFERENCES root(`OPEID`),
	`COUNT_ED` INT COMMENT
					'',
	`COUNT_NWNE_P10` INT COMMENT
					'',
	`COUNT_WNE_P10` INT COMMENT
					'',
	`MN_EARN_WNE_P10` INT COMMENT
					'',
	`MD_EARN_WNE_P10` INT COMMENT
					'',
	`PCT10_EARN_WNE_P10` INT COMMENT
					'',
	`PCT25_EARN_WNE_P10` INT COMMENT
					'',
	`PCT75_EARN_WNE_P10` INT COMMENT
					'',
	`PCT90_EARN_WNE_P10` INT COMMENT
					'',
	`SD_EARN_WNE_P10` INT COMMENT
					'',
	`COUNT_WNE_INC1_P10` INT COMMENT
					'',
	`COUNT_WNE_INC2_P10` INT COMMENT
					'',
	`COUNT_WNE_INC3_P10` INT COMMENT
					'',
	`COUNT_WNE_INDEP0_INC1_P10` INT COMMENT
					'',
	`COUNT_WNE_INDEP0_P10` INT COMMENT
					'',
	`COUNT_WNE_INDEP1_P10` INT COMMENT
					'',
	`COUNT_WNE_MALE0_P10` INT COMMENT
					'',
	`COUNT_WNE_MALE1_P10` INT COMMENT
					'',
	`GT_25K_P10` FLOAT(20,10) COMMENT
					'',
	`GT_28K_P10` FLOAT(20,10) COMMENT
					'',
	`MN_EARN_WNE_INC1_P10` INT COMMENT
					'',
	`MN_EARN_WNE_INC2_P10` INT COMMENT
					'',
	`MN_EARN_WNE_INC3_P10` INT COMMENT
					'',
	`MN_EARN_WNE_INDEP0_INC1_P10` INT COMMENT
					'',
	`MN_EARN_WNE_INDEP0_P10` INT COMMENT
					'',
	`MN_EARN_WNE_INDEP1_P10` INT COMMENT
					'',
	`MN_EARN_WNE_MALE0_P10` INT COMMENT
					'',
	`MN_EARN_WNE_MALE1_P10` INT COMMENT
					'',
	`COUNT_NWNE_P6` INT COMMENT
					'',
	`COUNT_WNE_P6` INT COMMENT
					'',
	`MN_EARN_WNE_P6` INT COMMENT
					'',
	`MD_EARN_WNE_P6` INT COMMENT
					'',
	`PCT10_EARN_WNE_P6` INT COMMENT
					'',
	`PCT25_EARN_WNE_P6` INT COMMENT
					'',
	`PCT75_EARN_WNE_P6` INT COMMENT
					'',
	`PCT90_EARN_WNE_P6` INT COMMENT
					'',
	`SD_EARN_WNE_P6` INT COMMENT
					'',
	`COUNT_WNE_INC1_P6` INT COMMENT
					'',
	`COUNT_WNE_INC2_P6` INT COMMENT
					'',
	`COUNT_WNE_INC3_P6` INT COMMENT
					'',
	`COUNT_WNE_INDEP0_INC1_P6` INT COMMENT
					'',
	`COUNT_WNE_INDEP0_P6` INT COMMENT
					'',
	`COUNT_WNE_INDEP1_P6` INT COMMENT
					'',
	`COUNT_WNE_MALE0_P6` INT COMMENT
					'',
	`COUNT_WNE_MALE1_P6` INT COMMENT
					'',
	`GT_25K_P6` FLOAT(20,10) COMMENT
					'',
	`GT_28K_P6` FLOAT(20,10) COMMENT
					'',
	`MN_EARN_WNE_INC1_P6` FLOAT(20,10) COMMENT
					'',
	`MN_EARN_WNE_INC2_P6` FLOAT(20,10) COMMENT
					'',
	`MN_EARN_WNE_INC3_P6` FLOAT(20,10) COMMENT
					'',
	`MN_EARN_WNE_INDEP0_INC1_P6` FLOAT(20,10) COMMENT
					'',
	`MN_EARN_WNE_INDEP0_P6` FLOAT(20,10) COMMENT
					'',
	`MN_EARN_WNE_INDEP1_P6` FLOAT(20,10) COMMENT
					'',
	`MN_EARN_WNE_MALE0_P6` FLOAT(20,10) COMMENT
					'',
	`MN_EARN_WNE_MALE1_P6` FLOAT(20,10) COMMENT
					'',
	`COUNT_NWNE_P7` FLOAT(20,10) COMMENT
					'',
	`COUNT_WNE_P7` INT COMMENT
					'',
	`MN_EARN_WNE_P7` FLOAT(20,10) COMMENT
					'',
	`SD_EARN_WNE_P7` FLOAT(20,10) COMMENT
					'',
	`GT_25K_P7` FLOAT(20,10) COMMENT
					'',
	`COUNT_NWNE_P8` INT COMMENT
					'',
	`COUNT_WNE_P8` INT COMMENT
					'',
	`MN_EARN_WNE_P8` FLOAT(20,10) COMMENT
					'',
	`MD_EARN_WNE_P8` FLOAT(20,10) COMMENT
					'',
	`PCT10_EARN_WNE_P8` INT COMMENT
					'',
	`PCT25_EARN_WNE_P8` INT COMMENT
					'',
	`PCT75_EARN_WNE_P8` INT COMMENT
					'',
	`PCT90_EARN_WNE_P8` INT COMMENT
					'',
	`SD_EARN_WNE_P8` FLOAT(20,10) COMMENT
					'',
	`GT_25K_P8` FLOAT(20,10) COMMENT
					'',
	`GT_28K_P8` FLOAT(20,10) COMMENT
					'',
	`COUNT_NWNE_P9` INT COMMENT
					'',
	`COUNT_WNE_P9` INT COMMENT
					'',
	`MN_EARN_WNE_P9` FLOAT(20,10) COMMENT
					'',
	`SD_EARN_WNE_P9` FLOAT(20,10) COMMENT
					'',
	`GT_25K_P9` FLOAT(20,10) COMMENT
					'',
	`Report_Year` INT COMMENT 'Year data reported',
	PRIMARY KEY (`earnings_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;