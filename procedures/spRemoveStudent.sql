USE [academy]

CREATE OR ALTER PROCEDURE spRemoveStudent (
    @StudentId UNIQUEIDENTIFIER
) AS
    BEGIN TRANSACTION
        DELETE FROM [StudentCourse] WHERE [StudentId] = @StudentId;
        DELETE FROM [Student] WHERE [Id] = @StudentId;
    COMMIT

SELECT * FROM [Student];

-- execution example for removing a student
EXEC  spRemoveStudent '682e3a68-c1a6-4fb0-882c-16031cd3b4f8'
