/*DOCUMENTACIï¿½N INTERNA
Descripciï¿½n: Procedimmiento que recibe por parï¿½metro los datos de la persona que va a ser insertada en la tabla LB.Person
Autor principal: Gabriela Gutiérrez
Fecha de creaciï¿½n: 1/05/2021
*/

create or replace PROCEDURE insertBook(inTitle IN VARCHAR2, inClasification IN NUMBER, inItem IN NUMBER, inAuthor IN VARCHAR2, inPublishingHouse IN VARCHAR2, inScore IN NUMBER, inEdition IN NUMBER, inCoverPage IN BLOB) AS
BEGIN
    INSERT INTO LB.BOOK(Title, ID_Clasification, ID_Item, Author, EDITION, CoverPage, PublishingHouse, Score)
    VALUES(inTitle, inClasification, inItem, inAuthor, inEdition, inCoverPage, inPublishingHouse, inScore);
END insertBook;


Select insertBook('title', 1, 1, 'autrhg', 'house', 5, 2, null) from dual;
SELECT * FROM LB.BOOK;

--, inCoverPage IN BLOB