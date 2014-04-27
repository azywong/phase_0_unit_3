# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

```
-- Loading resources from /Users/Allison/.sqliterc
SQLite version 3.7.7 2011-06-25 16:35:41
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite> 
```


## Release 1: Insert Data 

```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Allison', 'Wong', 'azywong@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 03:44:24  2014-04-27 03:44:24
2           Allison     Wong        azywong@gmail.com      2014-04-27 03:45:39  2014-04-27 03:45:39
```


## Release 2: Multi-line commands

```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 03:44:24  2014-04-27 03:44:24
2           Allison     Wong        azywong@gmail.com      2014-04-27 03:45:39  2014-04-27 03:45:39
```


## Release 3: Add a column

```
sqlite> ALTER TABLE users ADD COLUMN nickname VARCHAR(64);
sqlite> .schema
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, nickname VARCHAR(64));
sqlite> UPDATE users SET nickname='Kimchee' WHERE id=1;
sqlite> UPDATE users SET nickname='Allison' WHERE id=2;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-27 03:44:24  2014-04-27 03:44:24  Kimchee   
2           Allison     Wong        azywong@gmail.com      2014-04-27 03:45:39  2014-04-27 03:45:39  Allison  
```


## Release 4: Change a value

```
sqlite> UPDATE users SET first_name='Kimmy', nickname='Ninja Coder' WHERE id=1;
sqlite> UPDATE users SET updated_at=DATETIME('now') WHERE id=1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-27 03:44:24  2014-04-27 03:59:58  Ninja Coder
2           Allison     Wong        azywong@gmail.com      2014-04-27 03:45:39  2014-04-27 03:45:39  Allison   
```


## Release 5: Reflect

### What parts of your strategy worked? What problems did you face?

I read through the suggested resource and directions.  This challenge was pretty straightforward, so I didn't have any major issues getting through it.  Readint the instructions carefully and checking exactly what I typed was definitely important.


### What questions did you have while coding? What resources did you find to help you answer them?

I didn't have any major questions that required outside resources.  I just read this: http://zetcode.com/db/sqlite/datamanipulation/


### What concepts are you having trouble with, or did you just figure something out? If so, what?

I think as this is just the basics, I'm not having trouble with anything yet.  I'm afraid that I'll forget what I don't use though!  I think its really interesting how the terminal will print out the entire table!


### Did you learn any new skills or tricks?

This is all totally new to me, so everything I learned this challenge is a new skill!


### How confident are you with each of the Learning Competencies?

I think I'm alright with the Learning Competencies as long as I'm able to reference the correct formatting.  I need more practice to be able to do it without referencing resources!


### Which parts of the challenge did you enjoy?

It was interesting to create a database for the first time!  Being able to change elements was also interesting.


### Which parts of the challenge did you find tedious?

None!