CREATE OR REPLACE PROCEDURE update_Book (inID IN NUMBER, inID_Clasification IN NUMBER, inTitle IN VARCHAR2, inAuthor IN VARCHAR2, inEDITION IN NUMBER, inPublishingHouse IN VARCHAR2, inScore IN NUMBER)
AS
  
BEGIN 
        UPDATE
            LB.Book
        SET
            ID_Clasification = inID_Clasification,
            Title = inTitle,
            Author = inAuthor,
            EDITION = inEDITION,
            PublishingHouse = inPublishingHouse,
            Score = inScore
        WHERE 
            ID = inID;
            
END update_Book;
drop procedure update_Book;