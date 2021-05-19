CREATE OR REPLACE FUNCTION get_ItemID(inItem IN NCHAR) RETURN NUMBER 
AS
  idOut NUMBER;
  
BEGIN 
        SELECT ID
        INTO idOut
        FROM LB.Item
        WHERE Name = inItem;
        RETURN idOut;
        
END get_ItemID;

Select get_ItemID('Hola Mundo') from dual;