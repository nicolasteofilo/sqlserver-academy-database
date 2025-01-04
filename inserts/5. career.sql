USE [academy]

INSERT INTO [Career]([Id], [Title], [Summary], [Url], [DurationInMinutes], [Active], [Featured], [Tags]) VALUES(
    NEWID(),
    'Web Development Career',
    'A career for those who want to become a successful web developer',
    'web-development-career',
    120,
    1,
    1,
    'web, js, node, react, typescript'
)