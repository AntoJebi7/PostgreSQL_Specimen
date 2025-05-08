-- ==========================================
-- Popular MySQL Data Types with Examples
-- ==========================================

-- 1. Numeric Data Types
CREATE TABLE numeric_types (
    id INT PRIMARY KEY AUTO_INCREMENT,   -- INT: whole numbers
    small_number SMALLINT,                -- SMALLINT: smaller range of whole numbers
    large_number BIGINT,                  -- BIGINT: very large whole numbers
    price DECIMAL(10,2),                  -- DECIMAL: exact numbers with decimals (good for money) 
            --DECIMAL(10,2) means:
            --10 total digits
            --2 digits after the decimal point
            --8 digits before the decimal point (because 10 - 2 = 8)

    score FLOAT,                          -- FLOAT: approximate floating-point number
    percentage DOUBLE                     -- DOUBLE: more precise floating-point number
);

-- 2. String Data Types
CREATE TABLE string_types (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),                 -- VARCHAR: variable-length string (up to 50 characters)
    description TEXT,                     -- TEXT: large amount of text
    initial CHAR(1)                       -- CHAR: fixed-length string (1 character here)
);

-- 3. Date and Time Data Types
CREATE TABLE datetime_types (
    id INT PRIMARY KEY AUTO_INCREMENT,
    birth_date DATE,                      -- DATE: only date (YYYY-MM-DD)
    appointment_time TIME,                -- TIME: only time (HH:MM:SS)
    created_at DATETIME,                  -- DATETIME: full date and time
    updated_at TIMESTAMP                  -- TIMESTAMP: auto-records timestamp (good for tracking changes)
);

-- 4. Boolean Data Type
CREATE TABLE boolean_type (
    id INT PRIMARY KEY AUTO_INCREMENT,
    is_active BOOLEAN                     -- BOOLEAN: true (1) or false (0), internally stored as TINYINT(1)
);

-- 5. Binary Data Type
CREATE TABLE binary_type (
    id INT PRIMARY KEY AUTO_INCREMENT,
    file_data BLOB                        -- BLOB: Binary Large Object (used to store images, files, etc.)
);

-- ==========================================
-- Summary of Popular MySQL Data Types
-- ==========================================

-- INT        : Integer numbers (positive/negative)
-- SMALLINT   : Smaller integers
-- BIGINT     : Very large integers
-- DECIMAL    : Exact numeric values with fixed decimal points (like money)
-- FLOAT      : Approximate numeric values
-- DOUBLE     : More precise floating point than FLOAT

-- CHAR       : Fixed-length string
-- VARCHAR    : Variable-length string
-- TEXT       : Very large text storage

-- DATE       : Only date (no time)
-- TIME       : Only time (no date)
-- DATETIME   : Full date and time
-- TIMESTAMP  : Auto-updating date and time

-- BOOLEAN    : True (1) or False (0)

-- BLOB       : Binary data (images, files)

-- ==========================================
-- End of File
-- ==========================================
