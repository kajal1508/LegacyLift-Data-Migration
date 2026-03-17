INSERT INTO new_students (id, name, email, marks)
SELECT 
    id,
    name,
    COALESCE(email, 'unknown@gmail.com'),
    CASE 
        WHEN marks REGEXP '^[0-9]+$' THEN CAST(marks AS INT)
        ELSE 0
    END
FROM old_students;
