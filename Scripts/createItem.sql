/*DOCUMENTACI�N INTERNA
Descripci�n: Procedimmiento que recibe por par�metro los datos de la persona que va a ser insertada en la tabla LB.Person
Autor principal: Gabriela Guti�rrez
Fecha de creaci�n: 1/05/2021
*/

create or replace PROCEDURE createItem(inName IN VARCHAR2) AS
BEGIN
    INSERT INTO LB.Item(Name, Description, on_loan)
    VALUES(inName, 'Item del libro.', 0);
END createItem;

execute createItem('Hola Mundo');

Select * from LB.Item;