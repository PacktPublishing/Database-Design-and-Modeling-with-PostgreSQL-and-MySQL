-- Create the 'StudentCourses' table within the 'DesignAndModeling' schema
CREATE SCHEMA IF NOT EXISTS "DesignAndModeling";

-- Use the 'DesignAndModeling' schema
SET search_path TO "DesignAndModeling";

-- Create the 'StudentCourses' table
CREATE TABLE IF NOT EXISTS "StudentCourses" (
    "StudentID" SERIAL PRIMARY KEY,
    "StudentNAME" VARCHAR(45),
    "Courses" VARCHAR(45),
    CONSTRAINT "StudentID_UNIQUE" UNIQUE ("StudentID")
);
