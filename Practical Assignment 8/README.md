# Prompt
In this unit, we learned how databases support applications.  In this exercise, we will create a simple PHP application that demonstrates how software uses APIs to connect to databases, an example of how applications format data for interoperability and Web Services (such as REST), some of the tools available within the database to decouple applications from database schemas (which is desirable when designing applications resilient to change), and database security.

Students are encouraged to use my video as a guide to this assignment: https://www.youtube.com/watch?v=0QL1pyaJGrI

The tutorial video demonstrates completing the lab using PHP, however, some students may be more familiar with other programming languages such as Python, or Perl.  Any of these may be used if you prefer, and are able to meet all the assignment requirements.

We will be using the database we created in Practical Assignments 4.1 through 4.4.  Before beginning, make sure your MariaDB server is running, and MariaDB is started.  If you are using Google Cloud, your IP address has likely changed; be sure to update the IPs in MySQL Workbench, Notepad++, and PuTTY or PowerShell (and any other tools you may have been using).

Although typically modern applications are web based (using something like PHP, Java, Perl, ASP.NET, etc), to keep this assignment reletively simple, we will create a console based application.  This means you will not need to make any changes to your server's firewall, or configure the Apache web server (you can learn more about this in your open source operating systems courses).

At the conclusion of this lab, you should submit a single MS Word document that contains all the deliverables as described in each section below.

## Part One:
Create a simple console application that uses the PHP mysqli library (which includes a driver to connect to MariaDB) to register and connect to MariaDB.  The application will query the "school" table, and output the OPEID, INSTNM, CITY, and STABBR columns (only the top 10 records), and allow the user to set the query paramter for INSTNM.  Once you completed this step, include in your assignment submission document:

The code you used in PHP (or another language if you chose not to use PHP),
A screen capture (which includes your name) showing the output of a query. 
Your example query should not include results for "Drexel", "Rowan", or "Brown".

## Part Two:
Extend this simple application, such that after searching by name, the user can provide an OPEID to see the details about the institution.  The user should see the OPEID, INSTNM, CITY, STABBR, ACCEDAGENCY, INSTURL, RELAFFIL_VALUE, LOCALE_VALUE, TUITIONFEE_IN, TUITIONFEE_OUT, ADM_RATE and SAT_AVG.  This should be accomplished by using a view called "SchoolData", which will include all the columns listed, and will require 4 outer joins.  In addition, all the columns should be aliased to a different value that will make the data elements more obvious.  For example, rather than INSTNM, your view will alias this column as "Institution Name".  When the user enters the OPEID, the details for that OPEID will be displayed as a JSON string, using the aliased column names.  In your assignment submission document, include:

A copy of the SQL code you used to generate the view.
The code you used to create this application.
A screen capture showing the detail output after the user entered an OPEID, along with your name in the capture image.
Your example query should not include results for "Drexel", "Rowan", or "Brown".

## Part Three:
Extend this application to add authentication by prompting the user to provide their UserPassPhrase from the APIUsers table.  When running the application, they will be prompted to enter the PassPhrase; if there is a user with a matching PassPhrase, a simple "welcome" message (including their name) will be displayed, followed the prompt to enter the institution name for the first query.

Using the two PHP functions provided (included as attachments in this assignment) (you may port these to another scripting language if you chose not to use PHP) which will display the list of colleges from the name search, and will allow the user to view the data as either human-readable text, JSON, or a PHP data structure.  In your assignment submission, include:

A copy of the code you used for the user authentication.
A screen capture of the three steps (a prompt for the user passphrase, the list of colleges from the query parameter, and the final detail screen after entering an OPEID in any format you like). 
Your example query should not include results for "Drexel", "Rowan", or "Brown".

## Part Four:
Finally, using your simple application, in your assignment submission document, describe an example of a SQL injection attack that may work on your application at any of the user input steps.  Describe a method you might use in either the database engine or application that could help mitigate the risk of injection attack.
