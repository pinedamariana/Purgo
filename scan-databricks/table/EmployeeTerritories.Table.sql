
CREATE TABLE EmployeeTerritories (
  EmployeeID INTEGER NOT NULL,
  TerritoryID STRING NOT NULL,
  PRIMARY KEY (EmployeeID, TerritoryID)
);

ALTER TABLE EmployeeTerritories ADD CONSTRAINT FK_EmployeeTerritories_Employees FOREIGN KEY (EmployeeID) REFERENCES Employees (EmployeeID);
ALTER TABLE EmployeeTerritories ADD CONSTRAINT FK_EmployeeTerritories_Territories FOREIGN KEY (TerritoryID) REFERENCES Territories (TerritoryID);
