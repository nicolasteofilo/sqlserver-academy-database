USE [academy]

INSERT INTO [Category]
    (
        [Id],
        [Title],
        [Url],
        [Summary],
        [Order],
        [Description],
        [Featured]
    )
    VALUES(
        NEWID(),
        'Back-end',
        'backend',
        'A track focused on back-end development',
        0,
        'Back-end category',
        0
    )