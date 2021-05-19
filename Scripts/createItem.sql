/*DOCUMENTACIï¿½N INTERNA
Descripciï¿½n: Procedimmiento que recibe por parï¿½metro los datos de la persona que va a ser insertada en la tabla LB.Person
Autor principal: Gabriela Gutiérrez
Fecha de creaciï¿½n: 1/05/2021
*/

create or replace PROCEDURE createItem(inName IN VARCHAR2) AS
BEGIN
    INSERT INTO LB.Item(Name, Description, on_loan)
    VALUES(inName, 'Item del libro.', 0);
END createItem;

execute createItem('Hola Mundo');

Select * from LB.Item;