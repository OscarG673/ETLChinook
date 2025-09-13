SELECT
    p.Genre,
    SUM(fs.TotalAmount) AS TotalSales
FROM
    FactSales AS fs
JOIN
    DimProduct AS p ON fs.ProductKey = p.ProductKey
GROUP BY
    p.Genre
ORDER BY
    TotalSales DESC;