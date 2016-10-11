DROP TABLE "shows";
DROP TABLE "times";
DROP TABLE "users";
DROP TABLE "shows_users";

CREATE TABLE "shows" ("id" serial8 primary key, "created_at" date, "name" varchar(255), "price" decimal);
INSERT INTO "shows" VALUES (1, '2016-08-23 20:09:41.969902', 'Le Haggis', 12.99);
INSERT INTO "shows" VALUES (2, '2016-08-23 20:09:41.972179', 'Shitfaced Shakespeare', 16.50);
INSERT INTO "shows" VALUES (3, '2016-08-23 20:09:41.972999', 'Camille O''Sullivan', 17.99);
INSERT INTO "shows" VALUES (4, '2016-08-23 20:09:41.971545', 'Game of Thrones - The Musical', 16.50);
INSERT INTO "shows" VALUES (5, '2016-08-23 20:09:41.975610', 'Paul Dabek Mischief ', 12.99);
INSERT INTO "shows" VALUES (6, '2016-08-23 20:09:41.979784', 'Joe Stilgoe: Songs on Film – The Sequel', 16.50);
INSERT INTO "shows" VALUES (7, '2016-08-23 20:09:41.981653', 'Aaabeduation – A Magic Show', 17.99);
INSERT INTO "shows" VALUES (8, '2016-08-23 20:09:41.983556', 'Edinburgh Royal Tattoo', 32.99);
INSERT INTO "shows" VALUES (9, '2016-08-23 20:09:41.987003', 'Best of Burlesque', 7.99);
INSERT INTO "shows" VALUES (10, '2016-08-23 20:09:41.989455', 'Two become One', 8.50);
INSERT INTO "shows" VALUES (11, '2016-08-23 20:09:41.991271', 'Urinetown', 8.50);
INSERT INTO "shows" VALUES (12, '2016-08-23 20:09:41.992358', 'Two girls, one cup of comedy', 6.00);
INSERT INTO "shows" VALUES (13, '2016-08-23 20:09:41.996721', 'Balletronics', 32.00);


CREATE TABLE "times" ("id" serial8 primary key, "time" varchar(255), "show_id" int2);
INSERT INTO "times" (time, show_id) VALUES ('13:30', 1);
INSERT INTO "times" (time, show_id) VALUES ('19:30', 2);
INSERT INTO "times" (time, show_id) VALUES ('17:15', 3);
INSERT INTO "times" (time, show_id) VALUES ('19:30', 4);
INSERT INTO "times" (time, show_id) VALUES ('12:45', 5);
INSERT INTO "times" (time, show_id) VALUES ('17:15', 6);
INSERT INTO "times" (time, show_id) VALUES ('12:45', 7);
INSERT INTO "times" (time, show_id) VALUES ('22:00', 8);
INSERT INTO "times" (time, show_id) VALUES ('19:30', 9);
INSERT INTO "times" (time, show_id) VALUES ('14:15', 10);
INSERT INTO "times" (time, show_id) VALUES ('20:00', 11);
INSERT INTO "times" (time, show_id) VALUES ('12:45', 12);
INSERT INTO "times" (time, show_id) VALUES ('20:00', 13);


CREATE TABLE "users" ("id" serial8 primary key, "name" varchar(255));
INSERT INTO "users" (name) VALUES ('Keith Douglas'), ('Craig Morton'), ('Sandy McMillan');

INSERT INTO "users" (name) VALUES
('Adrian Tuckwell'),
('Alex Bazlinton'),
('Bertie Coll'),
('Bobby Ross'),
('Carlos Pereira'),
('Claudia Menting'),
('Cookie Lacson'),
('Cyrus Balsara'),
('David OLeary'),
('Diana Man'),
('Euan Ramsay'),
('Josephine Elder'),
('Kate Manson'),
('Kyle Grenell'),
('Matthew Jeorrett'),
('Max Veasey'),
('Paul Milne'),
('Pavlos MacDonald-Kosmidis'),
('Ross Loggie'),
('Thomas Crines'),
('Tom Benham');

CREATE TABLE "shows_users" ("id" serial8 primary key, "show_id" int8, "user_id" int8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (2, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (3, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (4, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (6, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (7, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (8, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 7);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (9, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (10, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 10);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 13);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 2);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 4);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 5);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 11);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 1);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 3);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 6);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 8);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 9);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 12);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 15);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 14);
INSERT INTO "shows_users" (show_id, user_id) VALUES (5, 17);
INSERT INTO "shows_users" (show_id, user_id) VALUES (1, 18);
INSERT INTO "shows_users" (show_id, user_id) VALUES (13, 19);
INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 20);
INSERT INTO "shows_users" (show_id, user_id) VALUES (11, 21);

-- ## SQL Questions

-- First create a database called fringe_shows
-- ```
--   #terminal
--   psql
--   create database fringe_shows;
--   \q
-- ```

-- Populate the data using the script - fringeshows.sql
-- ```
--   #terminal
--   psql -d fringe_shows -f fringeshows.sql
-- ```

-- Using the SQL Database file given to you as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.


## Section 1

  -- Revision of concepts that we've learnt in SQL today

  -- 1. Select the names of all users.

    SELECT name FROM users;

  -- 2. Select the names of all shows that cost less than £15.

    SELECT name FROM shows WHERE price <15;

  -- 3. Insert a user with the name "Val Gibson" into the users table.

    INSERT INTO users (name) VALUES ('Val Gibson');

  -- 4. Insert a record that Val Gibson wants to attend the show "Two girls, one cup of comedy".

    INSERT INTO shows_users (show_id, user_id) VALUES (12, 25);

  -- 5. Updates the name of the "Val Gibson" user to be "Valerie Gibson".

    UPDATE users SET name = 'Valerie Gibson' WHERE name = 'Val Gibson';

  -- 6. Deletes the user with the name 'Valerie Gibson'.

    DELETE FROM users WHERE name = 'Valerie Gibson';

  -- 7. Deletes the shows for the user you just deleted.

    DELETE FROM shows_users WHERE user_id = 25;


## Section 2

  This section involves more complex queries.  You will need to go and find out about aggregate funcions in SQL to answer some of the next questions.

  -- 9. Select the names and prices of all shows, ordered by price in ascending order.

    SELECT price, name FROM shows ORDER BY price DESC, price;

  -- 10. Select the average price of all shows.

    SELECT ROUND(AVG(price), 2) FROM shows;

  -- 11. Select the price of the least expensive show.

    SELECT MIN (price) FROM shows;

  -- 12. Select the sum of the price of all shows.

    SELECT SUM (price) FROM shows;

  -- 13. Select the sum of the price of all shows whose prices is less than £20.

    SELECT SUM (price) FROM shows WHERE price < 20;

  -- 14. Select the name and price of the most expensive show.

    SELECT (name, price) FROM shows WHERE price IN (SELECT MAX(price) FROM shows);

  -- 15. Select the name and price of the second from cheapest show.

    SELECT (name, price) FROM shows ORDER BY price ASC LIMIT 1 OFFSET 1;

  -- 16. Select the names of all users whose names start with the letter "N".

    SELECT (name) FROM users WHERE (name) LIKE 'N%';

  -- 17. Select the names of users whose names contain "er".

    SELECT (name) FROM users WHERE (name) LIKE '%er%';

-- ## Section 3

  -- The following questions can be answered by using nested SQL statements but ideally you should learn about JOIN clauses to answer them.

  -- 18. Select the time for the Edinburgh Royal Tattoo.

    SELECT time from times INNER JOIN shows ON shows.id = times.id WHERE shows.name = 'Edinburgh Royal Tattoo';

  -- 19. Select the number of users who want to see "Shitfaced Shakespeare".

    SELECT COUNT(shows_users.user_id) from shows_users INNER JOIN shows on shows.id = shows_users.show_id WHERE shows.name = 'Shitfaced Shakespeare';

  -- 20. Select all of the user names and the count of shows they're going to see.

    SELECT name, count(user_id) FROM users 
      INNER JOIN shows_users 
      ON shows_users.user_id = users.id 
      GROUP BY name ORDER BY count;

  -- 21. SELECT all users who are going to a show at 17:15.

    SELECT users.name FROM shows_users INNER JOIN users ON shows_users.user_id = users.id INNER JOIN times ON shows_users.show_id = times.show_id WHERE times.time = '17:15'