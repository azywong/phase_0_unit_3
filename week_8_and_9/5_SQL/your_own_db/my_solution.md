<!-- ## Show the terminal output here.  -->

```
CREATE TABLE pets (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(64) NOT NULL,
  type  VARCHAR(64) NOT NULL,
  age INTEGER NOT NULL,
  owner VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);
```

```
CREATE TABLE humans (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(64) NOT NULL,
  pet_id INTEGER NOT NULL,
  age INTEGER NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);
```

```
SELECT * FROM pets
JOIN humans
ON pets.id=humans.pet_id;
```

```
id          name        type        age         owner       created_at           updated_at         
----------  ----------  ----------  ----------  ----------  -------------------  -------------------
1           Bobo        bear        5           Allison     2014-05-09 06:12:54  2014-05-09 06:12:54
2           Bart        bear        23          Justin      2014-05-09 06:13:31  2014-05-09 06:13:31
3           Goldie      goldfish    0           Jessica     2014-05-09 06:13:42  2014-05-09 06:13:42
4           Pompom      pomeranian  1           Shirley     2014-05-09 06:13:51  2014-05-09 06:13:51
5           ajj         n/a         23          Ramona      2014-05-09 06:13:58  2014-05-09 06:13:58
6           squidoo     squid       1           Allison     2014-05-09 06:14:10  2014-05-09 06:14:10
7           brownie     bear        10          Ali         2014-05-09 06:14:16  2014-05-09 06:14:16
8           Tutra       Turtle      15          Alice       2014-05-09 06:14:22  2014-05-09 06:14:22
9           Tako        Octopus     6           Justin      2014-05-09 06:14:29  2014-05-09 06:14:29
10          pandie      Panda       9           Allison     2014-05-09 06:14:34  2014-05-09 06:14:34
```

