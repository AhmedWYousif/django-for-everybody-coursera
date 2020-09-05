Done
Welcome Ahmed W. Yousif from Web Application Technologies and Django

To get credit for this assignment, perform the instructions below and enter the code you get here:
 
(Hint: starts with 416)
Instructions
# This assignment is to be run using the SQLite command line tool on a Linux system like the bash shell on https://www.pythonanywhere.com/.

cd ~
sqlite3 pitch.sqlite3

# Create a table in the database called "Ages":

CREATE TABLE Ages ( 
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
  name VARCHAR(128), 
  age INTEGER
);

# Then make sure the table is empty by deleting any rows that you previously inserted, and insert these rows and only these rows with the following commands:

DELETE FROM Ages;
INSERT INTO Ages (name, age) VALUES ('Shanon', 25);
INSERT INTO Ages (name, age) VALUES ('Emi', 38);
INSERT INTO Ages (name, age) VALUES ('Raith', 21);
INSERT INTO Ages (name, age) VALUES ('Anika', 23);

# Once the inserts are done, run the following SQL command:
SELECT hex(name || age) AS X FROM Ages ORDER BY X;

# Find the first row in the resulting record set and enter the long string that looks like 53656C696E613333.
# If you are using the SQLite command line interface, you can use the ".quit" command to exit the program.

# Note: This assignment must be done using SQLite - in particular, the SELECT query above will not work in any other database. So you cannot use MySQL or Oracle for this assignment.

416E696B613233