--1	Write a query to fetch the EmpFname from the EmployeeInfo table in the upper case and use the ALIAS name as EmpName.

SELECT UPPER(EmpFname) AS EmpName
FROM [dbo].[Employee_Info]

--2	Write a query to fetch the number of employees working in the department ‘HR’.

SELECT COUNT (EMPID)
FROM [dbo].[Employee_Info]
WHERE DEPARTMENT = 'HR'

--3	Write a query to get the current date.

SELECT GETDATE() AS CURRENTDATE

--4	Write a query to retrieve the first four characters of  EmpLname from the EmployeeInfo table.

SELECT LEFT(EmpLname, 4) AS ShortLname
FROM [dbo].[Employee_Info]

--5	Write a query to fetch only the place name(string before brackets) from the Address column of EmployeeInfo table.

SELECT 
    LEFT(Address, CHARINDEX('(', Address) - 1) AS PlaceName
FROM [dbo].[Employee_Info]

--6	Write a query to create a new table that consists of data and structure copied from the other table.

SELECT *
INTO NEW_TABLE
FROM [dbo].[Employee_Info]

--7	Write q query to find all the employees whose salary is between 50000 to 100000.

SELECT EMPID
FROM [dbo].[Employee_Position]
WHERE SALARY BETWEEN 50000 AND 100000

--8	Write a query to find the names of employees that begin with ‘S’

SELECT EMPFNAME,
       EMPLNAME
FROM [dbo].[Employee_Info]
WHERE EMPFNAME LIKE 'S%' OR EMPLNAME LIKE 'S%'

--9	Write a query to fetch top N records.

SELECT TOP  3 SALARY
FROM [dbo].[Employee_Position]

--10 Write a query to retrieve the EmpFname and EmpLname in a single column as “FullName”. The first name and the last name must be separated with space.

SELECT EMPFNAME + ' ' + EMPLNAME AS FULLNAME
FROM [dbo].[Employee_Info]

--11 Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1995 and are grouped according to gender

SELECT Gender, COUNT(*) AS EMPID
FROM [dbo].[Employee_Info]
WHERE DOB BETWEEN '1970-05-02' AND '1995-12-31'
GROUP BY Gender

--12 Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.

SELECT *
FROM [dbo].[Employee_Info]
ORDER BY EMPLNAME DESC, DEPARTMENT ASC

--13 Write a query to fetch details of employees whose EmpLname ends with an alphabet ‘A’ and contains five alphabets.

SELECT *
FROM [dbo].[Employee_Info]
WHERE LEN(EMPLNAME) = 5 AND EMPLNAME LIKE '%A'

--14 Write a query to fetch details of all employees excluding the employees with first names, “Sanjay” and “Sonia” from the EmployeeInfo table.

SELECT *
FROM [dbo].[Employee_Info]
WHERE EMPFNAME NOT IN ('Sanjay', 'Sonia')

--15 Write a query to fetch details of employees with the address as “DELHI(DEL)”

SELECT *
FROM [dbo].[Employee_Info]
WHERE ADDRESS = 'DELHI(DEL)'

--16 Write a query to fetch all employees who also hold the managerial position.

SELECT *
FROM [dbo].[Employee_Position]
WHERE EMPPOSITION = 'MANAGER'

--17 Write a query to fetch the department-wise count of employees sorted by department’s count in ascending order

SELECT DEPARTMENT, COUNT (*) AS EMPLOYEE_COUNT
FROM [dbo].[Employee_Info]
GROUP BY DEPARTMENT 
ORDER BY EMPLOYEE_COUNT ASC

--18 Write a query to fecth Male employees in HR department

SELECT *
FROM [dbo].[Employee_Info]
WHERE GENDER = 'M'

--19 Write a SQL query to retrieve employee details from EmployeeInfo table who have a date of joining in the EmployeePosition table

SELECT *
FROM [dbo].[Employee_Position]
WHERE DATEOFJOINING IS NOT NULL

--20 Write a query to retrieve two minimum and maximum salaries from the EmployeePosition table

--- MINIMUM
SELECT TOP 2 SALARY
FROM [dbo].[Employee_Position]
ORDER BY SALARY ASC

---MIXIMUN
SELECT TOP 2 SALARY
FROM [dbo].[Employee_Position]
ORDER BY SALARY DESC 

