-- exemplo retirado do livro de texto 
-- "A First Course in Database Systems"
-- Ullman & Widom

CREATE TABLE Product (
   maker varchar(10),
   model int,
   type varchar(15),
   PRIMARY KEY( model )
);

CREATE TABLE PC (
   model int,
   speed float,
   ram int,
   hd int, 
   price int,
   PRIMARY KEY( model ),
   FOREIGN KEY( model ) REFERENCES Product( model )
);

CREATE TABLE Laptop (
   model int,
   speed float,
   ram int,
   hd int,
   screen float,
   price int,
   PRIMARY KEY( model ),
   FOREIGN KEY( model ) REFERENCES Product( model )
);

CREATE TABLE Printer (
   model int,
   color boolean,
   type varchar(15),
   price int,
   PRIMARY KEY( model ),
   FOREIGN KEY( model ) REFERENCES Product( model )
);
