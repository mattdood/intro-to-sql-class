-- Practice - The structure of this file is similar to the example.sql, you will complete the statements until you run out of errors

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

-- add records to the table
INSERT INTO students VALUES
  (1, 'Kyle', 'Jones', 0, '2020-04- 07:20:10.111'),
  (2, 'Terrence', 'Horton', 1, '2020-04-10 08:10:18.122'),
  (3, 'Grace', 'Atkinson', 1, '2020-04-10 08:11:20.133'),
  (4, 'Karla', 'Alston', 0, '2020--11 07:25:12.144'),
  (5, 'Casper', 'Nolan', 0, '2020-04-11 07:55:10.155'),
  (6, 'Allana', 'Merritt', 0, '2020-04-11 08:00:11.166'),
  (7, 'Nora', 'Guthrie', 1, '2020-04-11 '),
  (8, 'Aaliya', 'Vargas', 1, '2020-04-12 07:45:10.188'),
  (9, 'Annabella', 'Mooney', 1, '2020-04-12 08:10:12.199'),
  (10, 'Cassian', 'Shea', 0, '2020-04-12 09:22:10.200'),
	(),
	();

-- question 1
-- select all data from the table
.print '(1)----All Students----'
SELECT 
FROM students;

-- space 
.print '                                    '
.print '                                    '
.print '                                    '
.print '                                    '

-- question 2
-- count the number of entries in the table
.print '(2)----Count of Students----'


-- space 
.print '                                    '
.print '                                    '
.print '                                    '
.print '                                    '

-- question 3
-- select the names of currently enrolled students
.print '(3)----Currently Enrolled Students----'
SELECT 
FROM students
WHERE = 0;

-- space 
.print '                                    '
.print '                                    '
.print '                                    '
.print '                                    '

-- question 4
-- sort the students alphabetically
.print '(4)----Sorting Student Names----'
SELECT id, first_name, last_name
FROM students
ORDER BY first_name ASC;