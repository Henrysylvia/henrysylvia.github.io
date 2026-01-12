--1 write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.

SELECT 
S. [Name] AS SALESMAN,
C. [Customer_Name] AS CUSTOMER_NAME,
S. [city] AS CITY
FROM 
[dbo].[Salesman]AS S
INNER JOIN 
[dbo].[Customer]AS C
ON 
S.[city]= C.[City]

--2 write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.

SELECT 
O. [Order Number] AS ORDER_NUMBER,
O. [Purchase_Amount] AS PURCHASE_AMOUNT,
C.[Customer_Name] AS CUST_NAME,
C.[City] AS CITY
FROM [dbo].[Order] AS O
INNER JOIN [dbo].[Customer] AS C
ON O.[Customer ID]=C.[Customer_ID]
WHERE O.[Purchase_Amount] BETWEEN 500 AND 2000

--3 write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.

SELECT S.[Name] AS SALESMAN,
C. [Customer_Name] AS CUSTOMER_NAME,
S. [commission] AS COMISSION,
S. [City] AS CITY
FROM [dbo].[Salesman] AS S
INNER JOIN [dbo].[Customer] AS C
ON S.[Salesman_id]=C.[Salesman_ID]

--4 write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.  

SELECT S.[Name] AS SALESMAN,
C. [Customer_Name] AS CUSTOMER_NAME,
S. [commission] AS COMISSION,
C. [City] AS CITY
FROM [dbo].[Salesman] AS S
INNER JOIN [dbo].[Customer] AS C
ON S.[Salesman_id]=C.[Salesman_ID]
WHERE [commission] > 0.12

--5 write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.  

SELECT S.[Name] AS SALESMAN,
C. [Customer_Name] AS CUSTOMER_NAME,
S. [commission] AS COMISSION,
C. [City] AS CITY
FROM [dbo].[Salesman] AS S
INNER JOIN [dbo].[Customer] AS C
ON S.[Salesman_id]=C.[Salesman_ID]
WHERE S.[city] != C.[City] AND [commission] >0.12

--6 write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission

SELECT 
O. [Order Number] AS ORD_NO,
O. [Order Date] AS ORD_DATE,
O. [Purchase_Amount] AS PURCH_AMT,
C. [Customer_Name] AS CUSTOMER_NAME,
C. [Grade] AS GRADE,
S. [Name] AS SALESMAN,
S. [commission] AS COMMISSION
FROM [dbo].[Order] AS O
INNER JOIN [dbo].[Customer] AS C
ON O.[Customer ID]=C.[Customer_ID]
INNER JOIN [dbo].[Salesman] AS S
ON C.[Salesman_id]=S.[Salesman_ID]

--7 Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned. 

SELECT 
O. [Order Number] AS ORD_NO,
O. [Order Date] AS ORD_DATE,
S. [Salesman_id] AS SALES_ID,
O. [Customer ID] AS CUSTOMER_ID,
S. [Name] AS SALESMAN,
C. [Customer_Name] AS CUSTOMER_NAME,
S. [city] AS SALESMAN_CITY,
C. [City] AS CUSTOMER_CITY,
O. [Purchase_Amount] AS PURCH_AMT,
C. [Grade] AS GRADE,
S. [commission] AS COMMISSION
FROM [dbo].[Order] AS O
INNER JOIN [dbo].[Customer] AS C
ON O.[Customer ID]=C.[Customer_ID]
INNER JOIN [dbo].[Salesman] AS S
ON C.[Salesman_id]=S.[Salesman_ID]

--8 write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id.

SELECT
C.[Customer_Name] AS CUSTOMER_NAME,
C.[City] AS CUSTOMER_CITY,
C.[Grade] AS GRADE,
S.[Name] AS SALESMAN_NAME,
S.[city] AS SALESMAN_CITY
FROM [dbo].[Customer] AS C
INNER JOIN [dbo].[Salesman] AS S
ON C.[Salesman_ID] = S.[Salesman_id]
ORDER BY C.[Customer_ID] ASC

--9 write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.

SELECT 
C.[Customer_Name] AS CUST_NAME,
C.[City] AS CUST_CITY,
C.[Grade] AS GRADE,
S.[Name]AS SALESMAN_NAME,
S.[city] AS SALESMAN_CITY
FROM [dbo].[Customer] AS C
INNER JOIN [dbo].[Salesman] AS S
ON C.[Salesman_ID] = S.[Salesman_id]
WHERE C.[Grade] < 300
ORDER BY C.[Customer_ID] ASC

--10 Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not.

SELECT
C.[Customer_Name],
C.[City],
O.[Order Number],
O.[Order Date],
O.[Purchase_Amount]
FROM [dbo].[Customer] AS C
INNER JOIN [dbo].[Order] AS O
ON C.[Customer_ID]= O.[Customer ID]
ORDER BY O.[Order Date]

--11 SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves.

SELECT
C.[Customer_Name],
C.[City],
O.[Order Number],
O.[Order Date],
O.[Purchase_Amount],
S.[Name] AS SALESMAN_NAME,
S.[commission] AS COMMISSION
FROM [dbo].[Customer] AS C
INNER JOIN [dbo].[Order] AS O
ON C.[Customer_ID]= O.[Customer ID]
INNER JOIN [dbo].[Salesman] AS S
ON O.[Salesman_id]=S.[Salesman_id]
ORDER BY O.[Order Date]

--12 Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers.

SELECT 
  S.[Salesman_id],
  S.[Name] AS SALESMAN,
  S.[City],
  S.[Commission]
FROM [dbo].[Salesman] AS S
LEFT JOIN [dbo].[Customer] AS C
  ON S.[Salesman_id] = c.[Salesman_ID]
GROUP BY 
  S.[Salesman_id], S.[Name], S.[City], S.[Commission]
ORDER BY 
  S.[Name] ASC;

--13 write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount.

SELECT
S.[Name],
C.[Customer_Name],
S.[city] AS SALESMAN_CITY,
C.[City] AS CUSTOMER_CITY,
C.[Grade],
O.[Order Number],
O.[Order Date],
O.[Purchase_Amount]
FROM [dbo].[Salesman] AS S
LEFT JOIN [dbo].[Customer] AS C
ON S.[Salesman_id] = C.[Salesman_ID]
LEFT JOIN [dbo].[Order] AS O
ON C.[Customer_ID] = O.[Customer ID]

--14 Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.

SELECT
S.[Name],
C.[Customer_Name],
S.[city] AS SALESMAN_CITY,
C.[City] AS CUSTOMER_CITY,
C.[Grade],
O.[Order Number],
O.[Order Date],
O.[Purchase_Amount]
FROM [dbo].[Salesman] AS S
LEFT JOIN [dbo].[Customer] AS C
ON S.[Salesman_id] = C.[Salesman_ID]
LEFT JOIN [dbo].[Order] AS O
ON C.[Customer_ID] = O.[Customer ID]
WHERE
(O.[Purchase_Amount] > 2000 AND C.[Grade] IS NOT NULL)
OR O.[Order Number] IS NOT NULL

--15 For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list, create a report containing the customer name, city, order number, order date, and purchase amount
--First I created a CTE

WITH EXISTING_LIST AS (
    SELECT
        C.[Customer_Name]      AS Customer_Name,
        C.[City]               AS Customer_City,
        O.[Order Number]       AS Order_Number,
        O.[Order Date]         AS Order_Date,
        O.[Purchase_Amount]    AS Purchase_Amount
    FROM [dbo].[Salesman] AS S
    LEFT JOIN [dbo].[Customer] AS C
        ON S.[Salesman_id] = C.[Salesman_ID]
    LEFT JOIN [dbo].[Order] AS O
        ON C.[Customer_ID] = O.[Customer ID]
    WHERE
        (O.[Purchase_Amount] > 2000 AND C.[Grade] IS NOT NULL)
        OR O.[Order Number] IS NOT NULL
)
SELECT*
FROM EXISTING_LIST AS EL

--16 Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers on the list who must have a grade and placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade.

SELECT 
    C.[Customer_Name],
    C.[City] AS Customer_City,
    O.[Order Number] AS Order_Number,
    O.[Order Date] AS Order_Date,
    O.[Purchase_Amount] AS Purchase_Amount
FROM [dbo].[Customer] AS C
JOIN [dbo].[Order] AS O
    ON C.[Customer_ID] = O.[Customer ID]
LEFT JOIN [dbo].[Salesman] AS S
    ON C.[Salesman_ID] = S.[Salesman_id]
WHERE (C.[Customer_ID] IS NOT NULL AND C.[Grade] IS NOT NULL)
OR 
(C.[Customer_ID] IS NULL AND GRADE IS NULL)

--17 Write a SQL query to combine each row of the salesman table with each row of the customer table.

SELECT *
FROM [dbo].[Salesman] AS S
INNER JOIN [dbo].[Customer] AS C
ON S.[Salesman_id]=C.[Salesman_ID]

--18 Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.

SELECT *
FROM [dbo].[Salesman] AS S
CROSS JOIN [dbo].[Customer] AS C
WHERE S.[city]=C.[City]

--19 Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade.

SELECT 
S.[Name],
C.[Customer_Name],
S.[city] AS SALESMAN_CITY,
C.[City] AS CUSTOMER_CITY,
C.[Grade]
FROM [dbo].[Salesman] AS S
CROSS JOIN [dbo].[Customer] AS C
WHERE S.[city]IS NOT NULL AND C.[Grade] IS NOT NULL

--20 Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers and vice versa for those salesmen who must belong to a city which is not the same as his customer and the customers should have their own grade.

SELECT 
S.[Name],
C.[Customer_Name],
S.[city] AS SALESMAN_CITY,
C.[City] AS CUSTOMER_CITY,
C.[Grade]
FROM [dbo].[Salesman] AS S
CROSS JOIN [dbo].[Customer] AS C
WHERE S.[city]!=C.[City] AND C.[Grade] IS NOT NULL
