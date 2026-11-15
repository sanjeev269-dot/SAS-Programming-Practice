
/* My First SAS Program */
/* GitHub Day 2 Practice */

DATA employee;

    INPUT Name $ Department $ Salary;

    DATALINES;
Amit HR 35000
Rahul IT 45000
Priya Finance 40000
Neha IT 50000
;

RUN;

/* Display Employee Data */

PROC PRINT DATA=employee;
    TITLE "Employee Salary Details";
RUN;

/* Calculate Average Salary */

PROC MEANS DATA=employee MEAN;
    VAR Salary;
RUN;
/*Calculate total salary*/
proc sql;
select sum(Salary) as total_salary,
avg(Salary) as avg_salary
from employee;
quit;
