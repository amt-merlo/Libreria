/*DOCUMENTACI�N INTERNA
Descripci�n: Procedimmiento que recibe por par�metro los datos de la persona que va a ser insertada en la tabla LB.Person
Autor principal: Gabriela Guti�rrez
Fecha de creaci�n: 1/05/2021
*/

create or replace PROCEDURE createItem AS
BEGIN
    INSERT INTO LB.BOOK(Title, ID_Clasification, Author, EDITION, CoverPage, PublishingHouse, Score)
    VALUES(inTitle, inClasification, inAuthor, inEdition, inCoverPage, inPublishingHouse, inScore);
END insertBook;