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
            '682e3a68-c1a6-4fb0-882c-16031cd3b4f8',
            'Nicolas Teófilo',
            'nicolas@dev.com.br',
            '12345678',
            '(99) 1234-5678',
            GETDATE(),
            GETDATE()
        )