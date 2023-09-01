
CREATE TABLE Students (
    StudentID uniqueidentifier NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
); 
GO
CREATE TABLE Enrollments (
    EnrollmentID  uniqueidentifier NOT NULL PRIMARY KEY,
    Grade varchar(255) NOT NULL,
    StudentID uniqueidentifier FOREIGN KEY REFERENCES Students(StudentID),
    CourseID uniqueidentifier FOREIGN KEY REFERENCES Courses(CourseID),
);
GO
CREATE TABLE Courses (
    CourseID  uniqueidentifier NOT NULL PRIMARY KEY,
    Title varchar(255) NOT NULL,
);