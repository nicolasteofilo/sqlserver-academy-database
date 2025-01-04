use [academy];

INSERT INTO [Course]
(
    [Id],
    [Tag],
    [Title],
    [Summary],
    [Url],
    [Level],
    [DurationInMinutes],
    [CreateDate],
    [LastUpdateDate],
    [Active],
    [Free],
    [Featured],
    [AuthorId],
    [CategoryId],
    [Tags]
)
VALUES 
(
    NEWID(), -- generate a new UniqueIdentifier for course
    'WEBDEV', -- course tag
    'Mastering Modern Web Development', -- course title
    'An in-depth course covering modern web development practices, tools, and frameworks for building scalable web applications.',
    'https://example.com/courses/web-development', -- course URL
    2, -- (1 = Beginner, 2 = Intermediate, 3 = Advanced)
    120, -- 2h
    GETDATE(),
    GETDATE(),
    1, -- active course (1 = true, 0 = false)
    0, -- free course (0 = false, 1 = true)
    1, --  featured course (1 = true, 0 = false)
    NEWID(), -- Replace with a valid AuthorId from the [Author] table
    NEWID(), -- Replace with a valid CategoryId from the [Category] table
    'web development, javascript, react, node.js' -- Tags
);