
-- Create the schema 'DesignAndModeling' if it doesn't exist
CREATE SCHEMA IF NOT EXISTS "DesignAndModeling";

-- Use the 'DesignAndModeling' schema
SET search_path TO "DesignAndModeling";

-- Create the 'Course' table
CREATE TABLE IF NOT EXISTS "Course" (
  "CourseID" VARCHAR(10) NOT NULL,
  "CourseName" VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY ("CourseID")
);

-- Create the 'Student' table
CREATE TABLE IF NOT EXISTS "Student" (
  "StudentID" SERIAL PRIMARY KEY,
  "StudentName" VARCHAR(100) NULL DEFAULT NULL,
  "DateOfBirth" DATE NULL DEFAULT NULL,
  "Major" VARCHAR(100) NULL DEFAULT NULL,
  "ContactNumber" VARCHAR(15) NULL DEFAULT NULL
);

-- Create the 'StudentCourses' table
CREATE TABLE IF NOT EXISTS "StudentCourses" (
  "EnrollmentID" SERIAL PRIMARY KEY,
  "StudentID" INT NULL DEFAULT NULL,
  "CourseID" VARCHAR(10) NULL DEFAULT NULL,
  CONSTRAINT "studentcourses_fk_student"
    FOREIGN KEY ("StudentID")
    REFERENCES "Student" ("StudentID"),
  CONSTRAINT "studentcourses_fk_course"
    FOREIGN KEY ("CourseID")
    REFERENCES "Course" ("CourseID")
);
