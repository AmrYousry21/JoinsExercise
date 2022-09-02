SELECT p.Name, c. Name
FROM products AS p
JOIN categories AS c
USING (CategoryID)
WHERE CategoryID = 1;

SELECT p.Name, p.Price, r.Rating
FROM products AS p
JOIN reviews AS r
USING (ProductID)
WHERE r.Rating = 5;

Select tq.FirstName, tq.LastName, Max(tq.TotalQuantity)
From(SELECT e.FirstName, e.LastName, SUM(Quantity) AS TotalQuantity
FROM employees AS e
JOIN sales AS s
USING (EmployeeID)
GROUP BY e.FirstName, e.LastName
ORDER BY TotalQuantity DESC) tq;

SELECT d.Name AS DepartmentName, c.Name As CategoryName
FROM departments AS d
JOIN categories AS c
USING (DepartmentID)
WHERE c.Name = 'Games' OR c.Name = 'Appliances';


SELECT p.Name, Sum(s.Quantity) AS TotalSold , Sum(s.Quantity) * s.PricePerUnit AS TotalPrice
FROM products AS p
JOIN sales AS s
USING (ProductID)
WHERE p.Name = 'Eagles: Hotel California';

SELECT p.Name, r.Reviewer, Min(r.rating) As rating, r.comment
FROM products AS p
JOIN reviews AS r
USING (ProductID)
WHERE p.Name = 'Visio TV';

SELECT e.EmployeeID, e.FirstName, e.LastName, p.Name, s.Quantity
FROM employees As e
JOIN sales As s
USING (EmployeeID)
JOIN products As p
WHERE p.ProductID = s.ProductID;








