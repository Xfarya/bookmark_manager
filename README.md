_User Story_
As a user
So that I can keep track of websites I have visited
I would like to see a list of bookmarks

As a user
So that I can grow my list of websites
I would like to be able to add new bookmarks

<!-- _Domain Model_
Client - /bookmarks
~get request -> ~
app
~.all~ -->

Instructions for connecting to databases (test and real):

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager and bookmark_manager_test;
3. Connect to the database using the pqsl command \c bookmark_manager/ bookmark_manager_test;
4. Run the syntax (query) we have saved in the file 01_create_bookmarks_table.sql (db/migrations folder)
