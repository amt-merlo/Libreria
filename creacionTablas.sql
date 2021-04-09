
DROP TABLE LB.Person_Type;
DROP TABLE LB.Control;
DROP TABLE LB.Book;
DROP TABLE LB.Book_Clasification;
DROP TABLE LB.Videogame;
DROP TABLE LB.Movie;
DROP TABLE LB.Magazine;
DROP TABLE LB.Genre;
DROP TABLE LB.Item;
DROP TABLE LB.Person;

--Se crea un esquema
CREATE USER LB IDENTIFIED BY LB;

--Se crean las tablas necesarias
CREATE TABLE LB.Person (ID_Number INT PRIMARY KEY NOT NULL, 
                        Name NCHAR(30) NOT NULL, 
                        Email nchar(30) NOT NULL, 
                        Address nchar(60) NOT NULL);

CREATE TABLE LB.Person_Type (ID INT PRIMARY KEY NOT NULL, 
                             Type nchar(30) NOT NULL);

CREATE TABLE LB.Control (ID INT PRIMARY KEY NOT NULL, 
                         ID_Person INT NOT NULL,
                         ID_Item INT NOT NULL,
                         Loan_Date DATE NOT NULL, 
                         Return_Date DATE NOT NULL, 
                         Days_Amount INT NOT NULL);

CREATE TABLE LB.Item (ID INT PRIMARY KEY NOT NULL, 
                      Name NCHAR(30) NOT NULL, 
                      Description NCHAR(60) NOT NULL, 
                      on_loan NUMBER(1,0));

CREATE TABLE LB.Book (ID INT PRIMARY KEY NOT NULL,
                      ID_Clasification INT NOT NULL,
                      ID_Item INT NOT NULL,
                      Title NCHAR(30) NOT NULL, 
                      Author NCHAR(30) NOT NULL, 
                      EDITION INT NOT NULL, 
                      CoverPage BLOB, 
                      PublishingHouse NCHAR(30) NOT NULL, 
                      Score INT NOT NULL);
                      
CREATE TABLE LB.Book_Clasification (ID INT PRIMARY KEY NOT NULL, 
                                    Clasification NCHAR(30) NOT NULL);
                                    
CREATE TABLE LB.Videogame (ID INT PRIMARY KEY NOT NULL, 
                           ID_Item INT NOT NULL,
                           Name NCHAR(30) NOT NULL, 
                           Developer NCHAR(30) NOT NULL,
                           Genre NCHAR(30) NOT NULL);
                           
CREATE TABLE LB.Movie (ID INT PRIMARY KEY NOT NULL, 
                       ID_Genre INT NOT NULL,
                       ID_Item INT NOT NULL,
                       Title NCHAR(30) NOT NULL, 
                       MinDuration INT NOT NULL, 
                       Director NCHAR(30) NOT NULL, 
                       Score INT NOT NULL);
                       
CREATE TABLE LB.Genre (ID INT PRIMARY KEY NOT NULL,
                       Genre NCHAR(30) NOT NULL);

                           
CREATE TABLE LB.Magazine(ID INT PRIMARY KEY NOT NULL,
                         ID_Item INT NOT NULL,
                         Title NCHAR(30) NOT NULL, 
                         Volume INT NOT NULL);                    
                           
                           
                           
                           
                           
ALTER TABLE LB.Control
ADD CONSTRAINT FK_Person
FOREIGN KEY (ID_Person) REFERENCES LB.Person(ID_Number);

ALTER TABLE LB.Control
ADD CONSTRAINT FK_ControlItem
FOREIGN KEY (ID_Item) REFERENCES LB.Item(ID);

            
ALTER TABLE LB.Book
ADD CONSTRAINT FK_Clasification
FOREIGN KEY (ID_Clasification) REFERENCES LB.Book_Clasification(ID);      

ALTER TABLE LB.Book
ADD CONSTRAINT FK_BookItem
FOREIGN KEY (ID_Item) REFERENCES LB.Item(ID);

ALTER TABLE LB.Videogame
ADD CONSTRAINT FK_GameItem
FOREIGN KEY (ID_Item) REFERENCES LB.Item(ID);

ALTER TABLE LB.Movie
ADD CONSTRAINT FK_Genre
FOREIGN KEY (ID_Genre) REFERENCES LB.Genre(ID);

ALTER TABLE LB.Movie
ADD CONSTRAINT FK_MovieItem
FOREIGN KEY (ID_Item) REFERENCES LB.Item(ID);

ALTER TABLE LB.Magazine
ADD CONSTRAINT FK_MagazineItem
FOREIGN KEY (ID_Item) REFERENCES LB.Item(ID);
                           