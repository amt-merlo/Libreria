CREATE OR REPLACE FUNCTION get_BookClasifications RETURN SYS_REFCURSOR 
AS
  pRecordSet SYS_REFCURSOR;
  
BEGIN 
        OPEN pRecordSet FOR
        select Clasification from LB.Book_Clasification
        ORDER BY Clasification ASC;
        RETURN pRecordSet;
        
END get_BookClasifications;

