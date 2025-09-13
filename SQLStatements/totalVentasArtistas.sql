SELECT
    p.ArtistName,
    SUM(fs.TotalAmount) AS TotalSales
FROM
    FactSales AS fs
JOIN
    DimProduct AS p ON fs.ProductKey = p.ProductKey
GROUP BY
    p.ArtistName
ORDER BY
    TotalSales DESC;