
CREATE TABLE `Employees` (
  `EmployeeID` INT NOT NULL GENERATED ALWAYS AS IDENTITY,
  `LastName` STRING(20) NOT NULL,
  `FirstName` STRING(10) NOT NULL,
  `Title` STRING(30),
  `TitleOfCourtesy` STRING(25),
  `BirthDate` TIMESTAMP,
  `HireDate` TIMESTAMP,
  `Address` STRING(60),
  `City` STRING(15),
  `Region` STRING(15),
  `PostalCode` STRING(10),
  `Country` STRING(15),
  `HomePhone` STRING(24),
  `Extension` STRING(4),
  `Photo` BINARY,
  `Notes` STRING,
  `ReportsTo` INT,
  `PhotoPath` STRING(255),
  PRIMARY KEY (`EmployeeID`),
  FOREIGN KEY (`ReportsTo`) REFERENCES `Employees` (`EmployeeID`)
)
