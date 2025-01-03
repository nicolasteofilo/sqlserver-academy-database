USE [academy]

SELECT
    [Career].[Id],
    [Career].[Title],
    [Career].[Url],
    COUNT([Career].[Id]) as CousesAmount
FROM
    [Career]
INNER JOIN
    [CareerItem] ON [Career].[Id] = [CareerItem].[CareerId]
GROUP BY
    [Career].[Id], [Career].[Title], [Career].[Url]