/*DOCUMENTACIÓN INTERNA
Descripción: Función que utiliza un cursor para almacenar la consulta de libros con el filtro de título recibido por parámetro
Autor principal: Allison Montero
Fecha de creación: 15/05/2021
*/
CREATE OR REPLACE FUNCTION get_BorrowedBooksByID(inID IN NUMBER) RETURN SYS_REFCURSOR 
AS
  pRecordSet SYS_REFCURSOR;
  
BEGIN

    OPEN pRecordSet FOR
    SELECT LB.Book.ID, LB.Book.Title, 
           LB.Book_Clasification.Clasification, 
           LB.Book.Author, LB.Book.Edition, 
           LB.Book.CoverPage, LB.Book.PublishingHouse, 
           LB.Book.Score, LB.Loan_Control.ID_Person, LB.Loan_Control.Days_Amount
           
    FROM LB.Book 
    
    
    INNER JOIN LB.Item 
    ON LB.Book.ID_Item = LB.Item.ID AND LB.Item.On_Loan = 1 
    
    INNER JOIN LB.Book_Clasification 
    ON LB.Book.ID_Clasification = LB.Book_Clasification.ID
    
    INNER JOIN LB.Loan_Control
    ON LB.Item.ID = lb.loan_control.id_item
    
    INNER JOIN LB.Person
    ON LB.Person.ID_Number = inID
    
    ORDER BY LB.Book.Title;
    RETURN pRecordSet;
    
END get_BorrowedBooksByID;

select get_BorrowedBooksByID(234) from dual;