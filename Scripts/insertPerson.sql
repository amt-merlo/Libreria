/*DOCUMENTACI�N INTERNA
Descripci�n: Procedimmiento que recibe por par�metro los datos de la persona que va a ser insertada en la tabla LB.Person
Autor principal: Allison Montero
Fecha de creaci�n: 30/05/2021
*/
create or replace PROCEDURE insertPerson(inID_Number IN NUMBER, inFirstname IN VARCHAR2, inLastname IN VARCHAR2, inBirthdate IN VARCHAR2) AS
BEGIN
    INSERT INTO LB.Person(ID_Number, Firstname, Lastname, Birthdate)
    VALUES(inID_Number, inFirstname, inLastname, inBirthdate);
END insertPerson;

BEGIN
  INSERT INTO LB.Person(ID_Number, Firstname, Lastname, Birthdate)
  VALUES(118130171, 'Gaby', 'Gutierrez', '06/11/2001');
END;
select* from LB.Person;
execute insertPerson(112236656, 'Allis', 'Montero', '06/09/1880');
select * from LB.Person;
