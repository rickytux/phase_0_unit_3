# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

Last login: Sat May  3 08:10:28 on ttys000
Ricks-MacBook-Pro:~ Tux$ SQLite3 dummy.db
SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> first_name VARCHAR(64) NOT NULL,
   ...> last_name VARCHAR(64) NOT NULL,
   ...> email VARCHAR(128) UNIQUE NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL
   ...> );


## Release 1: Insert Data 

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-03 13:19:15|2014-05-03 13:19:15

## Release 2: Multi-line commands
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique

## Release 3: Add a column
sqlite> ALTER TABLE users ADD COLUMN Nickname VARCHAR(64) NOT NULL;
Error: Cannot add a NOT NULL column with default value NULL
sqlite> ALTER TABLE users ADD COLUMN Nickname VARCHAR(64) NOT NULL DEFAULT 'NOT ENTERED';
sqlite> SELECT * FROM users
   ...> ;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-03 13:19:15|2014-05-03 13:19:15|NOT ENTERED
sqlite> .schema users
CREATE TABLE users (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name VARCHAR(64) NOT NULL,
last_name VARCHAR(64) NOT NULL,
email VARCHAR(128) UNIQUE NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL
, Nickname VARCHAR(64) NOT NULL DEFAULT 'NOT ENTERED');
sqlite> UPDATE users SET Nickname= 'Kimchee' WHERE Id=1; 
sqlite> SELECT * From users;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-03 13:19:15|2014-05-03 13:19:15|Kimchee
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at, Nickname)           ...> VALUES                                                                     ...> ('Rick', 'Dsida', 'rick@none.com', DATETIME('now'), DATETIME('now'), 'Tux');
sqlite> SELECT * FROM users
   ...> ;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-03 13:19:15|2014-05-03 13:19:15|Kimchee
2|Rick|Dsida|rick@none.com|2014-05-03 13:57:31|2014-05-03 13:57:31|Tux

## Release 4: Change a value
sqlite> UPDATE users
   ...> SET first_name = 'Kimmy',
   ...> updated_at = DATETIME('now'),
   ...> Nickname = 'Ninja Coder'
   ...> WHERE Id = 1;
sqlite> SELECT * FROM users
   ...> ;
1|Kimmy|Lin|kimmy@devbootcamp.com|2014-05-03 13:19:15|2014-05-03 14:10:25|Ninja Coder
2|Rick|Dsida|rick@none.com|2014-05-03 13:57:31|2014-05-03 13:57:31|Tux
sqlite> 


## Release 5: Reflect
I liked playing around with SQLite.  The first thing that became apparent was that I continually forget to put semicolons at the end of 
lines especially if they are multi-line commands.  I encountered issues with adding a column (because it wouldn't let me add NOT NULL due
to existing row that had NULL value) but quickly rectified that by researching and finding that I could include a DEFAULT for the new column.
I am not sure this is a solution because then entry of an email is not required because it would default to the default value for new row entries.
Overall it was a good learning expericence actually playing around with the SQL after looking at relationships before.