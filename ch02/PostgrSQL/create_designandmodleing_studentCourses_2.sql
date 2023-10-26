-- Create the 'Student_Courses' table within the 'DesignAndModeling' schema
CREATE TABLE IF NOT EXISTS "DesignAndModeling"."Student_Courses" (
    "EnrollmentID" SERIAL PRIMARY KEY,
    "StudentID" INT NOT NULL,
    "StudentNAME" VARCHAR(45),
    "Courses" VARCHAR(45),
    CONSTRAINT "StudentID_UNIQUE" UNIQUE ("StudentID")
);
