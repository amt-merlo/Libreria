/*DOCUMENTACIï¿½N INTERNA
Descripciï¿½n: Procedimmiento que recibe por parï¿½metro los datos de la persona que va a ser insertada en la tabla LB.Person
Autor principal: Gabriela Gutiérrez
Fecha de creaciï¿½n: 1/05/2021
*/

create or replace PROCEDURE insertBook(inTitle IN VARCHAR2, inAuthor IN VARCHAR2, inPublishingHouse IN VARCHAR2, inScore IN NUMBER, inEdition IN NUMBER, inCoverPage IN BLOB) AS
BEGIN
    INSERT INTO LB.BOOK(Title, Author, EDITION, CoverPage, PublishingHouse, Score, CoverPage)
    VALUES(inTitle, inAuthor, inEdition, inCoverPage, inPublishingHouse, inScore, incoverpage));
END insertBook;


execute insertBook('title', 'autrhg', 'house', 5, 2, null);
SELECT * FROM LB.BOOK;

--, inCoverPage IN BLOB