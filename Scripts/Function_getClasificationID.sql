CREATE OR REPLACE FUNCTION get_ClasificationID(inClasification IN NCHAR) RETURN NUMBER 
AS
  idOut NUMBER;
  
BEGIN 
        SELECT ID
        INTO idOut
        FROM LB.book_clasification
        WHERE Clasification = inClasification;
        RETURN idOut;
        
END get_ClasificationID;

Select * from LB.Book_Clasification;

Select get_ClasificationID('Fiction') from dual;