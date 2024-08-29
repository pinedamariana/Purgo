CREATE TABLE Cateries (
  CateryID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
  CateryName STRING NOT NULL,
  Description STRING NULL,
  Picture BINARY NULL,
  PRIMARY KEY (CateryID)
)