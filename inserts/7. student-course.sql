USE [academy]

INSERT INTO 
    [StudentCourse]
        (
            [CourseId],
            [StudentId],
            [Progress],
            [Favorite],
            [StartDate],
            [LastUpdateDate]
        )
VALUES
        (
            NEWID(), -- Replace with a valid ID from [Course] table
            NEWID(), -- Replace with a valid ID from [Student] table
            20,
            1,
            GETDATE(),
            GETDATE()
        )