USE [academy]

INSERT INTO [Author] 
(
    [Id],
    [Name],
    [Title],
    [Image],
    [Bio],
    [Url],
    [Email],
    [Type]
)
VALUES 
(
    NEWID(),
    'John Doe',
    'Senior Developer',
    'https://example.com/images/johndoe.png',
    'John Doe bio.',
    'john-doe-dev',
    'johndoe@example.com',
    1
);