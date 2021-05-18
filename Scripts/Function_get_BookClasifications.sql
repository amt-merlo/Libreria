CREATE OR REPLACE FUNCTION get_BookClasifications RETURN SYS_REFCURSOR
AS
  clasificationOut SYS_REFCURSOR;
  
BEGIN 
        OPEN clasificationout FOR
        SELECT * FROM LB.book_clasification;
        RETURN clasificationOut;
        
END get_BookClasifications;

select get_bookclasifications
from DUAL;