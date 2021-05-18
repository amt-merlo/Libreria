/*DOCUMENTACI�N INTERNA
Descripci�n: Funci�n que utiliza un cursor para almacenar la consulta de libros con el filtro de t�tulo recibido por par�metro
Autor principal: Allison Montero
Fecha de creaci�n: 15/05/2021
*/
CREATE OR REPLACE FUNCTION get_notBorrowed RETURN SYS_REFCURSOR 
AS
  pRecordSet SYS_REFCURSOR;
  
BEGIN

    OPEN pRecordSet FOR
    SELECT *     
    FROM LB.Book 
    
    INNER JOIN LB.Item 
    ON LB.Book.ID_Item = LB.Item.ID AND LB.Item.On_Loan = 0
    
    ORDER BY LB.Book.Title;
    RETURN pRecordSet;
    
END get_notBorrowed;