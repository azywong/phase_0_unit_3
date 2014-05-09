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
INSERT INTO pets
(name, type, age, owner, created_at, updated_at)
VALUES
('Bobo', 'bear', 5, 'Allison', DATETIME('now'), DATETIME('now'));
('Bart', 'bear', 23, 'Justin', DATETIME('now'), DATETIME('now'));
('Goldie', 'goldfish', 0, 'Jessica', DATETIME('now'), DATETIME('now'));
('Pompom', 'pomeranian', 1, 'Shirley', DATETIME('now'), DATETIME('now'));
('Pompom', 'pomeranian', 1, 'Shirley', DATETIME('now'), DATETIME('now'));
```