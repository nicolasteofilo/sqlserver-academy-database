USE [academy]

INSERT INTO
    [Student]
        (
            [Id],
            [Name],
            [Email],
            [Document],
            [Phone],
            [BirthDate],
            [CreateDate]
        )
VALUES (
            NEWID(), -- Replace with a valid ID (Guid)
            'Your name',
            'youremail@dev.com.br',
            '12345678',
            '(99) 1234-5678',
            GETDATE(),
            GETDATE()
        )