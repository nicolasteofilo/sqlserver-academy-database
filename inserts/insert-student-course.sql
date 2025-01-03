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
            '08317b43-0ff7-41e1-9d9e-736e5980f0d2',
            '682e3a68-c1a6-4fb0-882c-16031cd3b4f8',
            20,
            1,
            GETDATE(),
            GETDATE()
        )