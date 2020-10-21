APIUser.txt, APIUserDetail.txt: Files used to show how to import data files into a database.

sudo mysqlimport -uroot --local CollegeScorecard APIUser.txt
sudo mysqlimport -uroot --local CollegeScorecard APIUserDetail.txt

CollegeScorecards_OtherTables.csv: Used to import the data dictionary with non-null values into the database.

CollegeScorecards_DataDictionary.csv: Used to import the data dictionary into the database. Includes everything.

MERGED2016_17_PP.csv: Raw data that we are attempting to import into our database.