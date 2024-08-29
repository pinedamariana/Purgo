
CREATE TABLE Shippers (
    ShipperID INTEGER NOT NULL,
    CompanyName STRING NOT NULL,
    Phone STRING NULL,
    PRIMARY KEY (ShipperID)
);

CREATE SEQUENCE Shippers_ShipperID_seq START WITH 1;
CREATE OR REPLACE TRIGGER Shippers_ShipperID_trigger
BEFORE INSERT ON Shippers
FOR EACH ROW
SET NEW.ShipperID = NEXTVAL('Shippers_ShipperID_seq');
