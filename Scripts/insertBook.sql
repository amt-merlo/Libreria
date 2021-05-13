create or replace PROCEDURE insertBook(inID_Number IN NUMBER, inTitle IN VARCHAR2, inAuthor IN VARCHAR2, inBirthdate IN VARCHAR2) AS
BEGIN
    INSERT INTO LB.BOOK((Title, Author, EDITION, CoverPage, PublishingHouse, Score)
    VALUES(inID_Number, inFirstname, inLastname, TO_DATE(inBirthdate, 'dd/mm/yyyy'));
END insertPerson;