
CREATE TABLE Suppliers (
    SupplierID INT NOT NULL, 
    CompanyName STRING NOT NULL, 
    ContactName STRING, 
    ContactTitle STRING, 
    Address STRING, 
    City STRING, 
    Region STRING, 
    PostalCode STRING, 
    Country STRING, 
    Phone STRING, 
    Fax STRING, 
    HomePage STRING,
    PRIMARY KEY (SupplierID)
);

-- Adding the auto increment functionality since Databricks SQL doesn't support IDENTITY directly
CREATE SEQUENCE SupplierID_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER set_SupplierID
BEFORE INSERT ON Suppliers 
FOR EACH ROW 
SET new.SupplierID = NEXT VALUE FOR SupplierID_seq;
