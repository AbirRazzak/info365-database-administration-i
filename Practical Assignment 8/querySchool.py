import mysql.connector
import json


def get_basic_college_data():
    input_name = input("Please enter a college name to get information: ")

    query = "SELECT s.OPEID, s.INSTNM, s.CITY, s.STABBR FROM school s WHERE INSTNM LIKE %s LIMIT 10"
    param = ("%" + input_name + "%",)  # Prevent SQL Injection

    cursor.execute(query, param)

    result1 = cursor.fetchall()
    columns1 = cursor.column_names

    print("\nSchools Found:")
    print('\n{:10}{:32}{:16}{:2}'.format(columns1[0], columns1[1], columns1[2], columns1[3]))
    print('{:10}{:32}{:16}{:2}'.format('-----', '-----', '-----', '-----'))

    for x in result1:
        print('{:10}{:32.31}{:16.15}{:2}'.format(str(x[0]), x[1], x[2], x[3]))


def get_advanced_college_data():
    input_opeid = input('\n\nPlease provide an OPEID for the desired school: ')

    query2 = "SELECT * FROM SchoolData WHERE `Institution ID` = %s"
    param2 = (input_opeid,)  # Prevent SQL Injection

    cursor.execute(query2, param2)

    result = cursor.fetchone()
    columns = cursor.column_names

    input_display_option = input('How would you like the data to be displayed? '
                                 + '1.Text, 2.JSON, 3.Python Data Structure: ')

    if input_display_option == '1':
        for i in range(len(result)):
            print('{}: {}'.format(columns[i], result[i]))

    elif input_display_option == '2' or input_display_option == '3':
        data = [(dict(zip(columns, result)))]  # Combine the column and value together (Php does this automatically)
        if input_display_option == '2':
            json_data = json.dumps(data, indent=2)
            print(json_data)
        if input_display_option == '3':
            print(data)

    else:
        print('Invalid Option Given.')


def authenticate_user():
    input_user = input('UserID: ')
    input_pass = input('Password:')

    query = "SELECT UserPassPhrase, UserName FROM APIUser a WHERE UserID =  %s;"
    param = (input_user, )  # Prevent SQL Injection

    cursor.execute(query, param)

    result = cursor.fetchone()

    if result is not None and result[0] == input_pass:
        print('Password Correct')
        print('--WELCOME BACK {}--'.format(result[1]))
    else:
        print('Password Incorrect')
        exit(-1)


if __name__ == '__main__':
    mydb = mysql.connector.connect(
        host="localhost",
        user="dba",
        password="",
        database="CollegeScorecard"
    )
    print("Connected to DB successfully.\n\n")
    cursor = mydb.cursor()
    authenticate_user()
    get_basic_college_data()
    get_advanced_college_data()
