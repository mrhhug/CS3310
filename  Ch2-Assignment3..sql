/***************************/
/* Name:     Michael Hug   */
/* Class:    CS3310/02     */
/* Term:     Fall 2013     */
/* Assgn #:  3             */
/***************************/

USE CapeCodd;

/* 2.28 */
SELECT SKU,SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand = 0 or QuantityOnOrder = 0 ORDER BY WarehouseID DESC, SKU ASC;

/* 2.29 */
SELECT SKU,SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand > 1 and QuantityOnHand < 10;

/* 2.30 */
SELECT SKU,SKU_Description, WarehouseID FROM INVENTORY WHERE QuantityOnHand BETWEEN 1+1 and 10-1;

/* 2.31 */
SELECT DISTINCT SKU,SKU_Description FROM INVENTORY WHERE SKU_Description like 'Half-dome%';

/* 2.32 */
SELECT DISTINCT SKU,SKU_Description FROM INVENTORY WHERE SKU_Description like '%Climb%';

/* 2.33 */
SELECT DISTINCT SKU,SKU_Description FROM INVENTORY WHERE SKU_Description like '__d%';

/* 2.34 */
SELECT SUM(QuantityOnHand) AS Sum, AVG(QuantityOnHand) AS Average, MIN(QuantityOnHand) AS Minimum, MAX(QuantityOnHand) AS Maximum, COUNT(QuantityOnHand) AS Count FROM INVENTORY;

/* 2.35 */
/*
for this database and this query : sum will display the total number of items on hand, count will display the total number of different items that are not null.
generally : sum will add up the values and count will add up the number of values who are not null
to clarify : sum actually looks at the data, count only checks for not null
*/

/* 2.36 */
SELECT WarehouseID, SUM(QuantityOnHand) as TotalItemsOnHand FROM INVENTORY GROUP BY WarehouseID ORDER BY TotalItemsOnHand DESC;

/* 2.37 */
SELECT WarehouseID, SUM(QuantityOnHand) as TotalItemsOnHandLT3 FROM INVENTORY WHERE QuantityOnHand < 3 GROUP BY WarehouseID ORDER BY TotalItemsOnHandLT3 DESC;

/* 2.38 */
SELECT WarehouseID, SUM(QuantityOnHand) as TotalItemsOnHandLT3 FROM INVENTORY WHERE QuantityOnHand < 3 GROUP BY WarehouseID HAVING	COUNT (*) < 2 ORDER BY TotalItemsOnHandLT3 DESC;

/* 2.39 */
/*
where was applied first. The having function applies after the aggragete function; where is applied before the function 
*/

/* 2.40 */
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState FROM INVENTORY, WAREHOUSE WHERE WarehouseCity='Atlanta' or WarehouseCity='Bangor' or WarehouseCity='Chicago';

/* 2.41 */
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState FROM INVENTORY, WAREHOUSE WHERE WarehouseCity in ('Atlanta','Bangor','Chicago');

/* 2.42 */
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState FROM INVENTORY, WAREHOUSE WHERE WarehouseCity!='Atlanta' and WarehouseCity!='Bangor' and WarehouseCity!='Chicago';

/* 2.43 */
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState FROM INVENTORY, WAREHOUSE WHERE WarehouseCity NOT in ('Atlanta','Bangor','Chicago');

/* 2.44 */
SELECT (SKU_Description+'is in a warehouse in'+WarehouseCity) AS ItemLocation FROM INVENTORY, WAREHOUSE;

/* 2.45 */
SELECT SKU, SKU_Description, WarehouseID FROM INVENTORY WHERE WarehouseID = (SELECT WarehouseID FROM WAREHOUSE WHERE Manager='Lucille Smith');

/* 2.46 */
SELECT SKU, SKU_Description, ware.WarehouseID FROM INVENTORY inv JOIN WAREHOUSE ware ON inv.WarehouseID = ware.WarehouseID WHERE Manager = 'Lucille Smith';

/* 2.47 */
SELECT WarehouseID, AVG(QuantityOnHand) AS 'AVG(QuantityOnHand)' FROM INVENTORY WHERE WarehouseID = (SELECT WarehouseID FROM WAREHOUSE WHERE Manager='Lucille Smith') GROUP BY WarehouseID;

/* 2.48 */
SELECT ware.WarehouseID, AVG(QuantityOnHand) AS 'AVG(QuantityOnHand)' FROM INVENTORY inv JOIN WAREHOUSE ware ON inv.WarehouseID = ware.WarehouseID WHERE Manager = 'Lucille Smith' GROUP BY ware.WarehouseID;

/* 2.49 */
SELECT WarehouseID, SUM(QuantityOnOrder) AS 'TotalItemsOnOrder',SUM(QuantityOnHand) AS 'TotalItemsOnHand' FROM INVENTORY GROUP BY WarehouseID, QuantityOnHand;

/* 2.50 */
SELECT ware.WarehouseID, WarehouseCity, WarehouseState, Manager, SKU, SKU_Description, QuantityOnHand FROM INVENTORY inv JOIN WAREHOUSE ware ON inv.WarehouseID = ware.WarehouseID WHERE Manager = 'Lucille Smith';
