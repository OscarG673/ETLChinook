SELECT
    c.Country,
    SUM(fs.TotalAmount) AS TotalSales
FROM
    FactSales AS fs
JOIN
    DimCustomer AS c ON fs.CustomerKey = c.CustomerKey
GROUP BY
    c.Country
ORDER BY
    TotalSales DESC;