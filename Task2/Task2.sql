/* 1-Return the BusinessEntityID and SalesYTD column from Sales.SalesPerson. 
Join this table to the Sales.SalesTerritory table in such a way that every in 
Sales.SalesPerson will be returned regardless of whether or not they are assigned to a territory.
Also, return the Name column from Sales.SalesTerritory. 
Give this column the column alias “Territory Name”.   */
SELECT Sales.SalesPerson.BusinessEntityID,Sales.SalesPerson.SalesYTD, Sales.SalesTerritory.Name AS TerritoryName
FROM Sales.SalesPerson
FULL JOIN  Sales.SalesTerritory
ON Sales.SalesPerson.TerritoryID = Sales.SalesTerritory.TerritoryID

/* 2) Using the previous example as your foundation, 
join to the Person.Person table to return the sales person’s 
first name and last name. 
Now, only include those rows where the territory’s
name is either “Northeast” or “Central”    */
SELECT Sales.SalesPerson.BusinessEntityID,Sales.SalesPerson.SalesYTD, Sales.SalesTerritory.Name AS TerritoryName, 
Person.Person.FirstName,Person.Person.LastName
FROM Sales.SalesPerson
FULL JOIN  Sales.SalesTerritory
ON Sales.SalesPerson.TerritoryID = Sales.SalesTerritory.TerritoryID
INNER JOIN Person.Person ON Person.Person.BusinessEntityID = Sales.SalesPerson.BusinessEntityID
Where Sales.SalesTerritory.Name = 'Northeast' OR Sales.SalesTerritory.Name = 'Central'

/* 3) Return the Name and ListPrice columns from Production.Product. 
For each product, regardless of whether or not it has an assigned 
ProductSubcategoryID, return the Name column from Product.ProductSubcategory for each product. 
Then, return the Name column from Production.ProductCategory for each row. 
Give the Name column from Production.Product the alias “ProductName”, 
the Name column from Production.ProductSubcategory the alias “ProductSubcategoryName”, 
and the Name column from Production.ProductCategory the alias “ProductCategoryName”. 
Order the results by the “ProductCategoryName” in descending order 
and then the “ProductSubcategoryName” in ascending order. */
SELECT Production.Product.Name AS ProductName,Production.Product.ListPrice,
Production.ProductSubcategory.ProductCategoryID,
Production.ProductSubcategory.Name AS ProductSubcategoryName,
Production.ProductCategory.Name AS ProductCategoryName
FROM Production.Product
INNER JOIN  Production.ProductSubcategory
ON Production.ProductSubcategory.ProductCategoryID = Production.Product.ProductSubcategoryID
INNER JOIN Production.ProductCategory
ON Production.ProductCategory.ProductCategoryID = Production.ProductSubcategory.ProductCategoryID
ORDER BY Production.ProductCategory.Name ASC

/* 4) Using the Person.Person and Person.Password tables, 
INNER JOIN the two tables using the BusinessEntityID column 
and return the FirstName and LastName columns from Person.Person 
and then PasswordHash column from Person.Password  */
SELECT Person.Person.FirstName,Person.Person.LastName,
Person.Password.PasswordHash
FROM Person.Person
INNER JOIN Person.Password
ON Person.Person.BusinessEntityID = Person.Password.BusinessEntityID


