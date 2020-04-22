-- Quiz - This will test some of the basics that we've covered throughout the lecture
-- There are broken statements throughout this file that require repairing before continuing through the questions

-- defaults for displaying
.header on
.mode column

-- repair the broken statement
CREATE TABLE  (
  id INT PRIMARY KEY, 
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  enrolled_status INT,
  created_date DATETIME
);

-- insert data into the table
INSERT INTO students VALUES
  (1, 'Kyle', 'Jones', 0, '2020-04-10 07:20:10.111'),
  (2, 'Terrence', 'Horton', 1, '2020-04-10 08:10:18.122'),
  (3, 'Grace', 'Atkinson', 1, '2020-04-10 08:11:20.133'),
  (4, 'Karla', 'Alston', 0, '2020-04-11 07:25:12.144'),
  (5, 'Casper', 'Nolan', 0, '2020-04-11 07:55:10.155'),
  (6, 'Allana', 'Merritt', 0, '2020-04-11 08:00:11.166'),
  (7, 'SELECT!', 'Congrats', 1, '2020-04-11 09:10:12.177'),
  (8, 'Aaliya', 'Vargas', 1, '2020-04-12 07:45:10.188'),
  (9, 'Annabella', 'Mooney', 1, '2020-04-12 08:10:12.199'),
  (10, 'Cassian', 'Shea', 0, '2020-04-12 09:22:10.200');

-- 1st question - a query begins with _______ ?
.print '(1)----Queries Start With----'
<What goes here> first_name AS 'First Name', last_name AS 'Last Name'
FROM students
WHERE id = 7;

-- space 
.print '                                    '
.print '                                    '
.print '                                    '
.print '                                    '

-- 2nd question - an aggregation performs basic arithmetic, one example is _____. It gives us the number of occurences
.print '(2)----Aggregations----'
SELECT enrolled_status AS 'Status', <aggregate here>(enrolled_status) AS 'Number of times'
FROM students
GROUP BY enrolled_status;

-- space 
.print '                                    '
.print '                                    '
.print '                                    '
.print '                                    '

-- 3rd question - repair the broken insert
.print '(3)----Record Created?----'
 INSERT INTO student VALUES
  (-1, 'Bill', 'Shakespeare', 1, '2020 '),

-- space 
.print '                                    '
.print '                                    '
.print '                                    '
.print '                                    '

-- 4th question - repair the 'where'
.print '(4)----Who, What, Where?----'
SELECT first_name, last_name
FROM students
WHERE enrolled_status <=> 0
ORDER BY first_name ASC;
