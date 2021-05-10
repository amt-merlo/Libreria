/*DOCUMENTACIÓN INTERNA
Descripción: Procedimmiento que recibe por parámetro los datos de la persona que va a ser insertada en la tabla LB.Person
Autor principal: Allison Montero
Fecha de creación: 30/05/2021
*/
create or replace PROCEDURE insertPerson(inID_Number IN NUMBER, inFirstname IN VARCHAR2, inLastname IN VARCHAR2, inBirthdate IN VARCHAR2) AS
BEGIN
    INSERT INTO LB.Person(ID_Number, Firstname, Lastname, Birthdate)
    VALUES(inID_Number, inFirstname, inLastname, inBirthdate);
END insertPerson;