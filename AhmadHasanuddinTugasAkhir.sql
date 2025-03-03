SELECT 
    o.Date AS order_date,
    pc.CategoryName AS category_name,
    p.ProdName AS product_name,
    p.Price AS product_price,
    o.Quantity AS order_qty,
    ROUND((p.Price * o.Quantity), 2) AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city
FROM `Tugas_Akhir.Orders` o
INNER JOIN `Tugas_Akhir.Customers` c ON o.CustomerID = c.CustomerID
INNER JOIN `Tugas_Akhir.Products` p ON o.ProdNumber = p.ProdNumber
INNER JOIN `Tugas_Akhir.ProductCategory` pc ON p.Category = pc.CategoryID
ORDER BY o.Date;
