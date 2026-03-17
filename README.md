# LegacyLift-Data-Migration
SQL Data Migration Project (LegacyLift): Implemented ETL pipeline using SQL to migrate data from a legacy system to a normalized database, including data cleaning, transformation, and validation.
# 📊 LegacyLift – SQL Data Migration Project

## 🔹 Overview
LegacyLift is a SQL-based data migration project that demonstrates the process of migrating data from a legacy, unstructured database to a modern, normalized schema. The project follows the ETL (Extract, Transform, Load) approach and focuses on ensuring data accuracy, consistency, and integrity.

---

## 🔹 Problem Statement
Legacy systems often store data in inconsistent and unstructured formats, leading to issues like:
- Missing values (NULLs)
- Duplicate records
- Incorrect data types
- Poor database structure

This project simulates a real-world scenario where such data needs to be cleaned and migrated into a structured database.

---

## 🔹 Approach

### 1. Extract
- Retrieved data from the legacy table (`old_students`)

### 2. Transform
- Handled NULL values using default replacements
- Converted incorrect data types (e.g., string → integer)
- Removed inconsistencies and standardized data

### 3. Load
- Inserted cleaned and structured data into the new table (`new_students`)

### 4. Validation
- Verified record counts between source and target tables
- Checked for NULL values and inconsistencies
- Ensured data integrity after migration

---

## 🔹 Database Schema

### Old Table (Unstructured)
- id (INT)
- name (VARCHAR)
- email (VARCHAR)
- marks (VARCHAR)

### New Table (Structured)
- id (INT, Primary Key)
- name (VARCHAR)
- email (VARCHAR, Unique)
- marks (INT)

---

## 🔹 Key Features
- Data cleaning using SQL queries
- Handling missing and inconsistent data
- Data type conversion and normalization
- Data validation and reconciliation
- Improved data integrity and query performance

---

## 🔹 Sample SQL Operations

### Data Migration
```sql
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
