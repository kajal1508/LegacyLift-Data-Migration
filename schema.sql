CREATE TABLE old_students (
    id INT,
    name VARCHAR(100),
    email VARCHAR(100),
    marks VARCHAR(10)
);

CREATE TABLE new_students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    marks INT
);
