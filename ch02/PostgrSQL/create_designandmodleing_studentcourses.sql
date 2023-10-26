-- Create the 'Student' table within the 'DesignAndModeling' schema
CREATE SCHEMA IF NOT EXISTS "DesignAndModeling";

-- Use the 'DesignAndModeling' schema
SET search_path TO "DesignAndModeling";

-- Create the 'Student' table
CREATE TABLE IF NOT EXISTS "Student" (
    "StudentID" SERIAL PRIMARY KEY,
    "StudentNAME" VARCHAR(45) NULL,
    "Courses" VARCHAR(45) NULL,
    CONSTRAINT "StudentID_UNIQUE" UNIQUE ("StudentID")
);
