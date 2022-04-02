*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database  pymysql  ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}       employeeschema
${DBUser}       root
${DBPass}       rully_10
${DBHost}       localhost
${DBPort}       3306

*** Test Cases ***
#Create person Table
 #   ${output}=    Execute SQL String    CREATE TABLE person (id integer, first_name VARCHAR(20), last_name VARCHAR(20));
  #  log to console    ${output}
   # should be equal as strings    ${output}     None

#Inserting Data in Table
    #Single Record
#    ${output}=    Execute SQL String    Insert into person values(101, "John", "canady");
 #   log to console    ${output}
  #  should be equal as strings    ${output}     None

    #Multiple Records
#    ${output}=   execute sql script    ./TestData/mydb_person_insertData.sql
 #   log to console    ${output}
  #  should be equal as strings    ${output}     None

Check David record present in Person Table
    check if exists in database    select id from employeeschema.person where first_name = "David";

Check Jio record not present in Person Table
    check if not exists in database    select id from employeeschema.person where first_name = "Jio";

Check Person Table exists in employeeschema database
    table must exist    person

Verify Row Count is Zero
    row count is 0    select * from employeeschema.person where first_name = "xyz";

Verify Row Count is Equal to Some Value
    row count is equal to x    select * from employeeschema.person where first_name = "David";  1

Verify Row Count is Greater than Some Value
    row count is greater than x    select * from employeeschema.person where first_name = "David";  0

Verify Row Count is Less than Some Value
    row count is less than x    select * from employeeschema.person where first_name = "David";  2

Update record in person table
    ${output}=  Execute SQL String    Update employeeschema.person set first_name = "JIO" where id = 104;
    log to console    ${output}
    should be equal as strings    ${output}     None

Retrieve Records from Person Table
    @{queryResults}=        query       select * from employeeschema.person;
    log to console  many @{queryResults}

Delete Records from person table
    ${output}=  Execute SQL String    Delete from employeeschema.person;
    should be equal as strings    ${output}     None