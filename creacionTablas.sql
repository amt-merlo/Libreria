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
                         Loan_Date DATE NOT NULL, 
                         Return_Date DATE NOT NULL, 
                         Days_Amount INT NOT NULL);

CREATE TABLE LB.Item (ID INT PRIMARY KEY NOT NULL, 
                      Name NCHAR(30) NOT NULL, 
                      Description NCHAR(60) NOT NULL, 
                      on_loan NUMBER(1,0));

CREATE TABLE LB.Book (ID INT PRIMARY KEY NOT NULL, 
                      Title NCHAR(30) NOT NULL, 
                      Author NCHAR(30) NOT NULL, 
                      EDITION INT NOT NULL, 
                      CoverPage BLOB, 
                      PublishingHouse NCHAR(30) NOT NULL, 
                      Score INT NOT NULL);
                      
CREATE TABLE LB.Book_Clasification (ID INT PRIMARY KEY NOT NULL, 
                                    Clasification NCHAR(30) NOT NULL);
                                    
CREATE TABLE LB.Videogame (ID INT PRIMARY KEY NOT NULL, 
                           Name NCHAR(30) NOT NULL, 
                           Developer NCHAR(30) NOT NULL,
                           Genre NCHAR(30) NOT NULL);
                           
CREATE TABLE LB.Movie (ID INT PRIMARY KEY NOT NULL, 
                       Title NCHAR(30) NOT NULL, 
                       MinDuration INT NOT NULL, 
                       Director NCHAR(30) NOT NULL, 
                       Score INT NOT NULL);
                           
CREATE TABLE LB.Magazine(ID INT PRIMARY KEY NOT NULL,
                         Title NCHAR(30) NOT NULL, 
                         Volume INT NOT NULL);                    
                           
                           
                           
                           
                           
                           
                           
                           