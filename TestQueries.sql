-- Query 1 --
SELECT 
    *
FROM
    Customer_Tbl
WHERE
    Customer_ID = 1 
UNION SELECT 
    Device_ID, Service_Type_ID, Cost, Est_Repair_Time
FROM
    Service_Tbl
        INNER JOIN
    Service_Type_Tbl USING (Service_Type_ID)
WHERE
    Customer_ID = 1;
 
-- Query 2 --
SELECT 
    First_Name,
    Last_Name,
    Device_ID,
    COUNT(Service_ID) AS NumberRepaired
FROM
    Service_Tbl
        INNER JOIN
    Employee_Tbl USING (EmployeeID)
WHERE
    MONTH(Date_Complete) = 1
GROUP BY Device_ID
ORDER BY Last_Name;
 
-- Query 3 --
SELECT 
    Device_ID, Service_Type_ID, Service_Descr, Date_Received
FROM
    Service_Tbl
        LEFT JOIN
    Service_Type_Tbl USING (Service_Type_ID)
ORDER BY Date_Received;
 
-- Query 4: Show salaries of employees and organize by amount first, and then title--
SELECT 
    First_Name, Last_Name, Employee_Title, Employee_Salary
FROM
    Employee_Tbl
ORDER BY Employee_Salary , Employee_Title;