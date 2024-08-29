
CREATE VIEW `Sales by Catery` AS
SELECT 
  Cateries.CateryID, 
  Cateries.CateryName, 
  Products.ProductName, 
  SUM(`Order Details Extended`.ExtendedPrice) AS ProductSales
FROM 
  Cateries 
  INNER JOIN Products ON Cateries.CateryID = Products.CateryID
  INNER JOIN `Order Details Extended` ON Products.ProductID = `Order Details Extended`.ProductID
  INNER JOIN Orders ON `Order Details Extended`.OrderID = Orders.OrderID
WHERE 
  Orders.OrderDate BETWEEN '1997-01-01' AND '1997-12-31'
GROUP BY 
  Cateries.CateryID, 
  Cateries.CateryName, 
  Products.ProductName
--ORDER BY Products.ProductName
