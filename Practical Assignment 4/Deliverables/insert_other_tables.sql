
 INSERT INTO `main`
		(`MAIN_ID`,`MAIN_VALUE`) VALUES 
	(0,
				'Not main campus'),
	(1,
				'Main campus');
 INSERT INTO `control`
		(`CONTROL_ID`,`CONTROL_VALUE`) VALUES 
	(1,
				'Public'),
	(2,
				'Private nonprofit'),
	(3,
				'Private for-profit');
 INSERT INTO `st_fips`
		(`ST_FIPS_ID`,`ST_FIPS_VALUE`) VALUES 
	(1,
				'Alabama'),
	(2,
				'Alaska'),
	(4,
				'Arizona'),
	(5,
				'Arkansas'),
	(6,
				'California'),
	(8,
				'Colorado'),
	(9,
				'Connecticut'),
	(10,
				'Delaware'),
	(11,
				'District of Columbia'),
	(12,
				'Florida'),
	(13,
				'Georgia'),
	(15,
				'Hawaii'),
	(16,
				'Idaho'),
	(17,
				'Illinois'),
	(18,
				'Indiana'),
	(19,
				'Iowa'),
	(20,
				'Kansas'),
	(21,
				'Kentucky'),
	(22,
				'Louisiana'),
	(23,
				'Maine'),
	(24,
				'Maryland'),
	(25,
				'Massachusetts'),
	(26,
				'Michigan'),
	(27,
				'Minnesota'),
	(28,
				'Mississippi'),
	(29,
				'Missouri'),
	(30,
				'Montana'),
	(31,
				'Nebraska'),
	(32,
				'Nevada'),
	(33,
				'New Hampshire'),
	(34,
				'New Jersey'),
	(35,
				'New Mexico'),
	(36,
				'New York'),
	(37,
				'North Carolina'),
	(38,
				'North Dakota'),
	(39,
				'Ohio'),
	(40,
				'Oklahoma'),
	(41,
				'Oregon'),
	(42,
				'Pennsylvania'),
	(44,
				'Rhode Island'),
	(45,
				'South Carolina'),
	(46,
				'South Dakota'),
	(47,
				'Tennessee'),
	(48,
				'Texas'),
	(49,
				'Utah'),
	(50,
				'Vermont'),
	(51,
				'Virginia'),
	(53,
				'Washington'),
	(54,
				'West Virginia'),
	(55,
				'Wisconsin'),
	(56,
				'Wyoming'),
	(60,
				'American Samoa'),
	(64,
				'Federated States of Micronesia'),
	(66,
				'Guam'),
	(69,
				'Northern Mariana Islands'),
	(70,
				'Palau'),
	(72,
				'Puerto Rico'),
	(78,
				'Virgin Islands');
 INSERT INTO `region`
		(`REGION_ID`,`REGION_VALUE`) VALUES 
	(0,
				'U.S. Service Schools'),
	(1,
				'New England (CT, ME, MA, NH, RI, VT)'),
	(2,
				'Mid East (DE, DC, MD, NJ, NY, PA)'),
	(3,
				'Great Lakes (IL, IN, MI, OH, WI)'),
	(4,
				'Plains (IA, KS, MN, MO, NE, ND, SD)'),
	(5,
				'Southeast (AL, AR, FL, GA, KY, LA, MS, NC, SC, TN, VA, WV)'),
	(6,
				'Southwest (AZ, NM, OK, TX)'),
	(7,
				'Rocky Mountains (CO, ID, MT, UT, WY)'),
	(8,
				'Far West (AK, CA, HI, NV, OR, WA)'),
	(9,
				'Outlying Areas (AS, FM, GU, MH, MP, PR, PW, VI)');
 INSERT INTO `locale`
		(`LOCALE_ID`,`LOCALE_VALUE`) VALUES 
	(11,
				'City: Large (population of 250,000 or more)'),
	(12,
				'City: Midsize (population of at least 100,000 but less than 250,000)'),
	(13,
				'City: Small (population less than 100,000)'),
	(21,
				'Suburb: Large (outside principal city, in urbanized area with population of 250,000 or more)'),
	(22,
				'Suburb: Midsize (outside principal city, in urbanized area with population of at least 100,000 but less than 250,000)'),
	(23,
				'Suburb: Small (outside principal city, in urbanized area with population less than 100,000)'),
	(31,
				'Town: Fringe (in urban cluster up to 10 miles from an urbanized area)'),
	(32,
				'Town: Distant (in urban cluster more than 10 miles and up to 35 miles from an urbanized area)'),
	(33,
				'Town: Remote (in urban cluster more than 35 miles from an urbanized area)'),
	(41,
				'Rural: Fringe (rural territory up to 5 miles from an urbanized area or up to 2.5 miles from an urban cluster)'),
	(42,
				'Rural: Distant (rural territory more than 5 miles but up to 25 miles from an urbanized area or more than 2.5 and up to 10 miles from an urban cluster)'),
	(43,
				'Rural: Remote (rural territory more than 25 miles from an urbanized area and more than 10 miles from an urban cluster)');
 INSERT INTO `locale2`
		(`LOCALE2_ID`,`LOCALE2_VALUE`) VALUES 
	(1,
				'Large City (a central city of a CMSA or MSA, with the city having a population greater than or equal to 250,000)'),
	(2,
				'Mid-Size City (a central city of a CMSA or MSA, with the city having a population less than 250,000)'),
	(3,
				'Urban Fringe of a Large City (any territory within a CMSA or MSA of a Large City and defined as urban by the Census Bureau)'),
	(4,
				'Urban Fringe of a Mid-Size City (any territory within a CMSA or MSA of a Mid-Size City and defined as urban by the Census Bureau)'),
	(5,
				'Large Town (an incorporated place or Census-designated place with a population greater than or equal to 25,000 and located outside a CMSA or MSA)'),
	(6,
				'Small Town (an incorporated place or Census-designated place with a population less than 25,000 and greater than or equal to 2,500 and located outside a CMSA or MSA)'),
	(7,
				'Rural, Outside MSA (any territory designated as rural by the Census Bureau that is outside a CMSA or MSA of a Large or Mid-Size City)'),
	(8,
				'Rural, Inside MSA (any territory designated as rural by the Census Bureau that is within a CMSA or MSA of a Large or Mid-Size City)');
 INSERT INTO `ccbasic`
		(`CCBASIC_ID`,`CCBASIC_VALUE`) VALUES 
	(-2,
				'Not applicable'),
	(0,
				'(Not classified)'),
	(1,
				'Associates Colleges: High Transfer-High Traditional'),
	(2,
				'Associates Colleges: High Transfer-Mixed Traditional/Nontraditional'),
	(3,
				'Associates Colleges: High Transfer-High Nontraditional'),
	(4,
				'Associates Colleges: Mixed Transfer/Vocational & Technical-High Traditional'),
	(5,
				'Associates Colleges: Mixed Transfer/Vocational & Technical-Mixed Traditional/Nontraditional'),
	(6,
				'Associates Colleges: Mixed Transfer/Vocational & Technical-High Nontraditional'),
	(7,
				'Associates Colleges: High Vocational & Technical-High Traditional'),
	(8,
				'Associates Colleges: High Vocational & Technical-Mixed Traditional/Nontraditional'),
	(9,
				'Associates Colleges: High Vocational & Technical-High Nontraditional'),
	(10,
				'Special Focus Two-Year: Health Professions'),
	(11,
				'Special Focus Two-Year: Technical Professions'),
	(12,
				'Special Focus Two-Year: Arts & Design'),
	(13,
				'Special Focus Two-Year: Other Fields'),
	(14,
				'Baccalaureate/Associates Colleges: Associates Dominant'),
	(15,
				'Doctoral Universities: Highest Research Activity'),
	(16,
				'Doctoral Universities: Higher Research Activity'),
	(17,
				'Doctoral Universities: Moderate Research Activity'),
	(18,
				'Masters Colleges & Universities: Larger Programs'),
	(19,
				'Masters Colleges & Universities: Medium Programs'),
	(20,
				'Masters Colleges & Universities: Small Programs'),
	(21,
				'Baccalaureate Colleges: Arts & Sciences Focus'),
	(22,
				'Baccalaureate Colleges: Diverse Fields'),
	(23,
				'Baccalaureate/Associates Colleges: Mixed Baccalaureate/Associates'),
	(24,
				'Special Focus Four-Year: Faith-Related Institutions'),
	(25,
				'Special Focus Four-Year: Medical Schools & Centers'),
	(26,
				'Special Focus Four-Year: Other Health Professions Schools'),
	(27,
				'Special Focus Four-Year: Engineering Schools'),
	(28,
				'Special Focus Four-Year: Other Technology-Related Schools'),
	(29,
				'Special Focus Four-Year: Business & Management Schools'),
	(30,
				'Special Focus Four-Year: Arts, Music & Design Schools'),
	(31,
				'Special Focus Four-Year: Law Schools'),
	(32,
				'Special Focus Four-Year: Other Special Focus Institutions'),
	(33,
				'Tribal Colleges');
 INSERT INTO `ccugprof`
		(`CCUGPROF_ID`,`CCUGPROF_VALUE`) VALUES 
	(-2,
				'Not applicable'),
	(0,
				'Not classified (Exclusively Graduate)'),
	(1,
				'Two-year, higher part-time'),
	(2,
				'Two-year, mixed part/full-time'),
	(3,
				'Two-year, medium full-time'),
	(4,
				'Two-year, higher full-time'),
	(5,
				'Four-year, higher part-time'),
	(6,
				'Four-year, medium full-time, inclusive, lower transfer-in'),
	(7,
				'Four-year, medium full-time, inclusive, higher transfer-in'),
	(8,
				'Four-year, medium full-time, selective, lower transfer-in'),
	(9,
				'Four-year, medium full-time , selective, higher transfer-in'),
	(10,
				'Four-year, full-time, inclusive, lower transfer-in'),
	(11,
				'Four-year, full-time, inclusive, higher transfer-in'),
	(12,
				'Four-year, full-time, selective, lower transfer-in'),
	(13,
				'Four-year, full-time, selective, higher transfer-in'),
	(14,
				'Four-year, full-time, more selective, lower transfer-in'),
	(15,
				'Four-year, full-time, more selective, higher transfer-in');
 INSERT INTO `ccsizset`
		(`CCSIZSET_ID`,`CCSIZSET_VALUE`) VALUES 
	(-2,
				'Not applicable'),
	(0,
				'(Not classified)'),
	(1,
				'Two-year, very small'),
	(2,
				'Two-year, small'),
	(3,
				'Two-year, medium'),
	(4,
				'Two-year, large'),
	(5,
				'Two-year, very large'),
	(6,
				'Four-year, very small, primarily nonresidential'),
	(7,
				'Four-year, very small, primarily residential'),
	(8,
				'Four-year, very small, highly residential'),
	(9,
				'Four-year, small, primarily nonresidential'),
	(10,
				'Four-year, small, primarily residential'),
	(11,
				'Four-year, small, highly residential'),
	(12,
				'Four-year, medium, primarily nonresidential'),
	(13,
				'Four-year, medium, primarily residential'),
	(14,
				'Four-year, medium, highly residential'),
	(15,
				'Four-year, large, primarily nonresidential'),
	(16,
				'Four-year, large, primarily residential'),
	(17,
				'Four-year, large, highly residential'),
	(18,
				'Exclusively graduate/professional');
 INSERT INTO `hbcu`
		(`HBCU_ID`,`HBCU_VALUE`) VALUES 
	(0,
				'No'),
	(1,
				'Yes');
 INSERT INTO `pbi`
		(`PBI_ID`,`PBI_VALUE`) VALUES 
	(0,
				'No'),
	(1,
				'Yes');
 INSERT INTO `annhi`
		(`ANNHI_ID`,`ANNHI_VALUE`) VALUES 
	(0,
				'No'),
	(1,
				'Yes');
 INSERT INTO `tribal`
		(`TRIBAL_ID`,`TRIBAL_VALUE`) VALUES 
	(0,
				'No'),
	(1,
				'Yes');
 INSERT INTO `aanapii`
		(`AANAPII_ID`,`AANAPII_VALUE`) VALUES 
	(0,
				'No'),
	(1,
				'Yes');
 INSERT INTO `hsi`
		(`HSI_ID`,`HSI_VALUE`) VALUES 
	(0,
				'No'),
	(1,
				'Yes');
 INSERT INTO `nanti`
		(`NANTI_ID`,`NANTI_VALUE`) VALUES 
	(0,
				'No'),
	(1,
				'Yes');
 INSERT INTO `menonly`
		(`MENONLY_ID`,`MENONLY_VALUE`) VALUES 
	(0,
				'No'),
	(1,
				'Yes');
 INSERT INTO `womenonly`
		(`WOMENONLY_ID`,`WOMENONLY_VALUE`) VALUES 
	(0,
				'No'),
	(1,
				'Yes');
 INSERT INTO `relaffil`
		(`RELAFFIL_ID`,`RELAFFIL_VALUE`) VALUES 
	(-1,
				'Not reported'),
	(-2,
				'Not applicable'),
	(22,
				'American Evangelical Lutheran Church'),
	(24,
				'African Methodist Episcopal Zion Church'),
	(27,
				'Assemblies of God Church'),
	(28,
				'Brethren Church'),
	(30,
				'Roman Catholic'),
	(33,
				'Wisconsin Evangelical Lutheran Synod'),
	(34,
				'Christ and Missionary Alliance Church'),
	(35,
				'Christian Reformed Church'),
	(36,
				'Evangelical Congregational Church'),
	(37,
				'Evangelical Covenant Church of America'),
	(38,
				'Evangelical Free Church of America'),
	(39,
				'Evangelical Lutheran Church'),
	(40,
				'International United Pentecostal Church'),
	(41,
				'Free Will Baptist Church'),
	(42,
				'Interdenominational'),
	(43,
				'Mennonite Brethren Church'),
	(44,
				'Moravian Church'),
	(45,
				'North American Baptist'),
	(47,
				'Pentecostal Holiness Church'),
	(48,
				'Christian Churches and Churches of Christ'),
	(49,
				'Reformed Church in America'),
	(50,
				'Episcopal Church, Reformed'),
	(51,
				'African Methodist Episcopal'),
	(52,
				'American Baptist'),
	(53,
				'American Lutheran'),
	(54,
				'Baptist'),
	(55,
				'Christian Methodist Episcopal'),
	(57,
				'Church of God'),
	(58,
				'Church of Brethren'),
	(59,
				'Church of the Nazarene'),
	(60,
				'Cumberland Presbyterian'),
	(61,
				'Christian Church (Disciples of Christ)'),
	(64,
				'Free Methodist'),
	(65,
				'Friends'),
	(66,
				'Presbyterian Church (USA)'),
	(67,
				'Lutheran Church in America'),
	(68,
				'Lutheran Church - Missouri Synod'),
	(69,
				'Mennonite Church'),
	(71,
				'United Methodist'),
	(73,
				'Protestant Episcopal'),
	(74,
				'Churches of Christ'),
	(75,
				'Southern Baptist'),
	(76,
				'United Church of Christ'),
	(77,
				'Protestant, not specified'),
	(78,
				'Multiple Protestant Denomination'),
	(79,
				'Other Protestant'),
	(80,
				'Jewish'),
	(81,
				'Reformed Presbyterian Church'),
	(84,
				'United Brethren Church'),
	(87,
				'Missionary Church Inc'),
	(88,
				'Undenominational'),
	(89,
				'Wesleyan'),
	(91,
				'Greek Orthodox'),
	(92,
				'Russian Orthodox'),
	(93,
				'Unitarian Universalist'),
	(94,
				'Latter Day Saints (Mormon Church)'),
	(95,
				'Seventh Day Adventists'),
	(97,
				'The Presbyterian Church in America'),
	(99,
				'Other (none of the above)'),
	(100,
				'Original Free Will Baptist'),
	(101,
				'Ecumenical Christian'),
	(102,
				'Evangelical Christian'),
	(103,
				'Presbyterian'),
	(105,
				'General Baptist'),
	(106,
				'Muslim'),
	(107,
				'Plymouth Brethren');
 INSERT INTO `distanceonly`
		(`DISTANCEONLY_ID`,`DISTANCEONLY_VALUE`) VALUES 
	(0,
				'Not distance-education only'),
	(1,
				'Distance-education only');
 INSERT INTO `curroper`
		(`CURROPER_ID`,`CURROPER_VALUE`) VALUES 
	(0,
				'Not currently certified as an operating institution'),
	(1,
				'Currently certified as operating');
 INSERT INTO `iclevel`
		(`ICLEVEL_ID`,`ICLEVEL_VALUE`) VALUES 
	(1,
				'4-year'),
	(2,
				'2-year'),
	(3,
				'Less-than-2-year');
 INSERT INTO `openadmp`
		(`OPENADMP_ID`,`OPENADMP_VALUE`) VALUES 
	(1,
				'Yes'),
	(2,
				'No'),
	(3,
				'Does not enroll first-time students');