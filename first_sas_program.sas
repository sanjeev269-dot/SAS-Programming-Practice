
/* Calculate Total Salary */

PROC SQL;

    SELECT SUM(Salary) AS Total_Salary,
           AVG(Salary) AS Average_Salary

    FROM employee;

QUIT;
