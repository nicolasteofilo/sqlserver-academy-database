USE [academy]

CREATE OR ALTER PROCEDURE spStudentProgress (
    @StudentId UNIQUEIDENTIFIER
) AS
    SELECT 
        [Course].[Title] as Course,
        [Student].[Name] as Student,
        [Progress],
        [StudentCourse].[LastUpdateDate]
    FROM
        [StudentCourse]
    INNER JOIN
        [Course] ON [Course].Id = [CourseId]
    INNER JOIN
        [Student] ON [Student].Id = [StudentId]
    WHERE
        [StudentCourse].[StudentId] = @StudentId AND
        [StudentCourse].Progress < 100 AND [StudentCourse].Progress > 0
    ORDER BY
        [StudentCourse].[LastUpdateDate] DESC

-- running example
EXEC spStudentProgress '682e3a68-c1a6-4fb0-882c-16031cd3b4f8'