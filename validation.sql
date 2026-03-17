-- Count validation
SELECT COUNT(*) FROM old_students;
SELECT COUNT(*) FROM new_students;

-- Null check
SELECT * FROM new_students WHERE email IS NULL;
