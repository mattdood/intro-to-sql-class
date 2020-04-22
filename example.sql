-- header and column mode, these are repl.it sqlite defaults
.header on
.mode column

-- create first table
CREATE TABLE students (
  id INT PRIMARY KEY, 
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  enrolled_status INT,
  created_date DATETIME
);

-- table explanation:
-- id INT PRIMARY KEY-> numeric, unique identifier for each student
-- first_name VARCHAR(255) -> a 255 character text string
-- last_name VARCHAR(255) -> a 255 character text string
-- enrolled_status INT -> 0 = True (active enrollment), 
--                        1 = False (inactive enrollment)
-- created_date DATETIME -> record creation date in         
-- 													"YYYY-MM-DD HH:MM:SS.SSS"

-- add records to the table
INSERT INTO students VALUES
  (1, 'Kyle', 'Jones', 0, '2020-04-10 07:20:10.111'),
  (2, 'Terrence', 'Horton', 1, '2020-04-10 08:10:18.122'),
  (3, 'Grace', 'Atkinson', 1, '2020-04-10 08:11:20.133'),
  (4, 'Karla', 'Alston', 0, '2020-04-11 07:25:12.144'),
  (5, 'Casper', 'Nolan', 0, '2020-04-11 07:55:10.155'),
  (6, 'Allana', 'Merritt', 0, '2020-04-11 08:00:11.166'),
  (7, 'Nora', 'Guthrie', 1, '2020-04-11 09:10:12.177'),
  (8, 'Aaliya', 'Vargas', 1, '2020-04-12 07:45:10.188'),
  (9, 'Annabella', 'Mooney', 1, '2020-04-12 08:10:12.199'),
  (10, 'Cassian', 'Shea', 0, '2020-04-12 09:22:10.200');

-- 1st query - gathering each name from the database
.print '(1)----Student Names----'
SELECT first_name AS 'First Name', last_name AS 'Last Name'
FROM students;

-- space 
.print '                                    '
.print '                                    '
.print '                                    '
.print '                                    '

-- 2nd query - a query for displaying the total number of each student by enrollment status
.print '(2)----Enrollment Statuses----'
SELECT enrolled_status AS 'Status', COUNT(enrolled_status) AS 'Count'
FROM students
GROUP BY enrolled_status;

-- space 
.print '                                    '
.print '                                    '
.print '                                    '
.print '                                    '

-- 3rd query - selecting students by created date, creating a full name, and displaying only active students
.print '(3)----Record Created----'
SELECT first_name || " " || last_name AS 'Name', enrolled_status AS 'Status', created_date
FROM students
WHERE enrolled_status = 0;

-- space 
.print '                                    '
.print '                                    '
.print '                                    '
.print '                                    '

-- 4th query - selecting student's id, name, and status that were created after 4/10/2020
.print '(4)----After 4/10/2020----'
SELECT first_name AS 'First Name', last_name AS 'Last Name', enrolled_status AS 'Status', created_date AS 'Created Date'
FROM students
WHERE created_date >= '2020-04-11';

-- space 
.print '                                    '
.print '                                    '
.print '                                    '
.print '                                    '

-- the above query could have been written as:
.print '(4 cont.)----After 4/10/2020 (again)----'
SELECT first_name AS 'First Name', last_name AS 'Last Name', enrolled_status AS 'Status', created_date AS 'Created Date'
FROM students
WHERE created_date > '2020-04-10 24:00:00.000';