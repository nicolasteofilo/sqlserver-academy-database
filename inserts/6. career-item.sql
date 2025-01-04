USE [academy]

INSERT INTO [CareerItem]([CareerId], [CourseId], [Title], [Description], [Order]) VALUES (
    NEWID(), -- Replace with a valid CareerId from the [Career] table,
    NEWID(), -- Replace with a valid CourseId from the [Course] table,
    'A course to delve deeper into web development',
    'Learn now the main skills of the job market',
    0
)