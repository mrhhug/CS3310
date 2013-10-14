/***************************/
/* Name:     Michael Hug   */
/* Class:    CS3310/01     */
/* Term:     Spring 2013   */
/* Assgn #:  4             */
/***************************/
USE WPC;
/* A */
select * from PROJECT;

/* B */
select ProjectID, Name, StartDate, EndDate from PROJECT;

/* C */
select * from PROJECT where StartDate < '2008-08-01 00:00:00.000';

/* D */
select * from PROJECT where EndDate is NULL;

/* E */
select ASSIGNMENT.ProjectID, ASSIGNMENT.EmployeeNumber, EMPLOYEE.LastName, EMPLOYEE.FirstName, EMPLOYEE.Phone FROM ASSIGNMENT INNER JOIN EMPLOYEE ON  ASSIGNMENT.EmployeeNumber=EMPLOYEE.EmployeeNumber

/* F */
select ASSIGNMENT.ProjectID, PROJECT.Name, PROJECT.Department, ASSIGNMENT.EmployeeNumber, EMPLOYEE.LastName, EMPLOYEE.FirstName, EMPLOYEE.Phone FROM ASSIGNMENT INNER JOIN EMPLOYEE ON  ASSIGNMENT.EmployeeNumber=EMPLOYEE.EmployeeNumber INNER JOIN PROJECT ON PROJECT.ProjectID=ASSIGNMENT.ProjectID

/* G */
select ASSIGNMENT.ProjectID, PROJECT.Name, PROJECT.Department, DEPARTMENT.Phone, ASSIGNMENT.EmployeeNumber, EMPLOYEE.LastName, EMPLOYEE.FirstName, EMPLOYEE.Phone FROM ASSIGNMENT INNER JOIN EMPLOYEE ON  ASSIGNMENT.EmployeeNumber=EMPLOYEE.EmployeeNumber INNER JOIN PROJECT ON PROJECT.ProjectID=ASSIGNMENT.ProjectID INNER JOIN DEPARTMENT ON DEPARTMENT.DepartmentName=PROJECT.Department ORDER BY PROJECT.ProjectID ASC

/* H */
select ASSIGNMENT.ProjectID, PROJECT.Name, PROJECT.Department, DEPARTMENT.Phone, ASSIGNMENT.EmployeeNumber, EMPLOYEE.LastName, EMPLOYEE.FirstName, EMPLOYEE.Phone FROM ASSIGNMENT INNER JOIN EMPLOYEE ON  ASSIGNMENT.EmployeeNumber=EMPLOYEE.EmployeeNumber INNER JOIN PROJECT ON PROJECT.ProjectID=ASSIGNMENT.ProjectID INNER JOIN DEPARTMENT ON DEPARTMENT.DepartmentName=PROJECT.Department WHERE DEPARTMENT.DepartmentName='Marketing' ORDER BY PROJECT.ProjectID ASC

/* I */
SELECT COUNT(Department) AS 'projects being run by the marketing department' FROM PROJECT WHERE Department='Marketing'

/* J */
SELECT SUM(MaxHours) AS 'total MaxHours of projects being run by the marketing department' FROM PROJECT WHERE Department='Marketing'

/* K */
SELECT AVG(MaxHours) AS 'average MaxHours of projects being run by the marketing department' FROM PROJECT WHERE Department='Marketing'

/* L */

