/***************************/
/* Name:     Michael Hug   */
/* Class:    CS3310/02     */
/* Term:     Fall 2013     */
/* Assgn #:  2             */
/***************************/

/* 2.17 */
SELECT SKU, SKU_Description FROM inventory;

/* 2.18 */
SELECT SKU_Description, SKU FROM inventory;

/* 2.19 */
SELECT WarehouseID FROM inventory;

/* 2.20 */
SELECT DISTINCT WarehouseID FROM inventory;

/* 2.21 */
SELECT WarehouseID,SKU,SKU_Description,QuantityOnHand,QuantityOnOrder FROM INVENTORY;

/* 2.22 */
SELECT * FROM INVENTORY;

/* 2.23 */
SELECT * FROM INVENTORY where QuantityOnHand > 0;

/* 2.24 */
SELECT SKU,SKU_Description FROM INVENTORY where QuantityOnHand = 0;

/* 2.25 */
SELECT SKU,SKU_Description, WarehouseID FROM INVENTORY where QuantityOnHand = 0 ORDER BY WarehouseID ASC;

/* 2.26 */
SELECT SKU,SKU_Description, WarehouseID FROM INVENTORY where QuantityOnHand > 0 ORDER BY WarehouseID DESC, SKU ASC;

/* 2.27 */
SELECT SKU,SKU_Description, WarehouseID FROM INVENTORY where QuantityOnHand = 0 AND QuantityOnOrder > 0 ORDER BY WarehouseID DESC, SKU ASC;
