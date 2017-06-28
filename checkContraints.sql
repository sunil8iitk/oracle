CREATE TABLE SUPPLIERS
(
	supplier_id numeric(4),
	supplier_name varchar2(50),
	CONSTRIANT checkID
	check (supplier_id BETWEEN 100 999)

);


CREATE TABLE SUPPLIERS
(
	SUPPLIER_ID numeric(4),
	SUPPLIER_NAME varchar2(50),
	CONSTRAINT checkName
	check (SUPPLIER_NAME = upper(supplier_name))
);


ALTER TABLE SUPPLIERS
ADD CONSTRAINT 
checkSupplierName check(supplier_name in ('IBM', 'MICROSOFT', 'NVIDIA'));


ALTER TABLE SUPPLIERS
DROP CONSTRAINT
checkSupplierName;

ALTER TABLE SUPPLIERS
ENABLE CONSTRAINT
checkSupplierName;

ALTER TABLE SUPPLIERS
DISABLE CONSTRAINT
checkSupplierID;