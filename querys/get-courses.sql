USE [academy]

SELECT
    c.[Id],
    c.[Tag],
    c.[Title],
    c.[Summary],
    c.[Url],
    c.[Level],
    c.[CreateDate],
    cat.[Title] as Category,
    Author.Name as Author
FROM
    [Course] as c
    INNER JOIN [Category] as cat ON c.[CategoryId] = cat.[Id]
    INNER JOIN [Author] ON c.[AuthorId] = [Author].[Id]
WHERE
    [Active] = 1
ORDER BY
    [CreateDate] DESC