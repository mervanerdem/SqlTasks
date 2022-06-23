/* 1-Return the FirstName and LastName columns from Person.Person where the FirstName column 
is equal to “Mark”*/
SELECT FirstName,LastName 
FROM Person.Person
WHERE FirstName = 'Mark';

/* 2-Find the top 100 rows from Production.
Product where the ListPrice is not equal to 0.00*/
SELECT TOP 100 *
FROM Production.Product
WHERE  Not ListPrice = 0.00;

/* 3- Return all rows and columns from the view HumanResources.vEmployee where the employee’s 
last name starts with a letter less than “D” */
SELECT *
FROM HumanResources.vEmployee
WHERE LastName LIKE '%d%';

/* 4-Return all rows and columns from Person.StateProvince where the CountryRegionCode column 
is equal to “CA” */
SELECT *
FROM Person.StateProvince
WHERE CountryRegionCode = 'CA'

/* 5- Return the FirstName and LastName columns from the view Sales.vIndividualCustomer where 
the LastName is equal to “Smith”. Give the column alias “Customer First Name” and “Customer 
Last Name” to the FirstName and LastName columns respectively */
SELECT FirstName AS CustomerFirstName ,LastName AS CustomerLastName
FROM Sales.vIndividualCustomer
WHERE LastName = 'Smith'

/*  6-Using the Sales.vIndividualCustomer view, find all customers with a CountryRegionName equal 
to “Australia” or all customers who have a PhoneNumberType equal to “Cell” and an 
EmailPromotion column value equal to 0. (Hint: the correct query requires the use of 
parentheses in your WHERE clause */
SELECT *
FROM Sales.vIndividualCustomer
WHERE CountryRegionName = 'Australia' OR (PhoneNumberType = 'Cell' AND EmailPromotion = 0)

/*  7- Find all employees from the view HumanResources.vEmployeeDepartment who have a 
Department column value in the list of: “Executive”, “Tool Design”, and “Engineering”. 
Complete this query twice – once using the IN operator in the WHERE clause and a second time 
using multiple OR operators */
--First way with IN
SELECT *
FROM HumanResources.vEmployeeDepartment
WHERE Department IN ('Executive','Tool Design','Engineering')
--Second way with OR
SELECT *
FROM HumanResources.vEmployeeDepartment
WHERE Department = 'Executive' OR Department = 'Tool Design' OR Department = 'Engineering'

/*  8-Using HumanResources.vEmployeeDepartment, find all employees who have a StartDate 
between July 1, 2009 and June 30, 2010. Complete this query twice – once using the BETWEEN 
operator and then by using a combination of the “greater than or equal to” and “less than or 
equal to” operators.
 */
 --First way with BETWEEN
SELECT *
FROM HumanResources.vEmployeeDepartment
WHERE StartDate BETWEEN '2009-7-1' AND '2010-6-30'
--Second way with "greater than or equal to” and “less than or equal to"
SELECT *
FROM HumanResources.vEmployeeDepartment
WHERE StartDate >= '2009-7-1' AND StartDate <='2010-6-30'

/* 9-Find all customers from the view Sales.vIndividualCustomer whose LastName starts with the 
letter “R”. (Hint: a wildcard character can assist you with this query) */
SELECT *
FROM Sales.vIndividualCustomer
WHERE LastName LIKE 'R%'

/* 10- Find all customers from the view Sales.vIndividualCustomer whose LastName ends with the 
letter “r”. (Hint: a wildcard character can assist you with this query) */
SELECT *
FROM Sales.vIndividualCustomer
WHERE LastName LIKE '%r'

/* 11-Find all customers from the view Sales.vIndividualCustomer whose LastName is either “Lopez”, 
“Martin”, or “Wood” and whose FirstName starts with any letter between “C” and “L” in the 
alphabet. (Hint: multiple wildcard characters will be used in this query) */
SELECT *
FROM Sales.vIndividualCustomer
WHERE (LastName IN ('Lopez', 'Martin','Wood')) AND (FirstName Between 'C%' AND 'L%')
Order By FirstName ASC

/*  12-Return all columns from the Sales.SalesOrderHeader table for all sales that are associated with a 
sales person. That is, return all rows where the SalesPersonID column does not contain a NULL 
value.*/
SELECT  *
FROM Sales.SalesOrderHeader
WHERE SalesPersonID IS NOT NULL

/*  13-Return the SalesPersonID and TotalDue columns from Sales.SalesOrderHeader for all sales that 
do not have a NULL value in the SalesPersonID column and whose TotalDue value exceeds 
$70,000.*/
SELECT  SalesPersonID,TotalDue
FROM Sales.SalesOrderHeader
WHERE (SalesPersonID IS NOT NULL) AND TotalDue > 70000
