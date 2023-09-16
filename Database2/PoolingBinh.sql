﻿GO
CREATE TABLE [dbo].[Students] (
    [StudentID] uniqueidentifier NOT NULL PRIMARY KEY,
    [LastName] varchar(255) NOT NULL,
    [FirstName] varchar(255) NOT NULL,
    [EnrollmentDate] date
);
GO
CREATE TABLE [dbo].[Enrollments] (
    [EnrollmentID]  uniqueidentifier NOT NULL PRIMARY KEY,
    [CourseID] uniqueidentifier FOREIGN KEY REFERENCES Courses(CourseID),
    [StudentID] uniqueidentifier FOREIGN KEY REFERENCES Students(StudentID),
    [Grade] varchar(255) NOT NULL,
);
GO
CREATE TABLE [dbo].[Courses] (
    [CourseID]  uniqueidentifier NOT NULL PRIMARY KEY,
    [Title] varchar(255) NOT NULL,
    [Credits] varchar(255) NOT NULL
);