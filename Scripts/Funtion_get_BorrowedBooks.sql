/*DOCUMENTACIÓN INTERNA
Descripción: Función que utiliza un cursor para almacenar la consulta de libros con el filtro de título recibido por parámetro
Autor principal: Allison Montero
Fecha de creación: 11/05/2021
*/
CREATE OR REPLACE FUNCTION get_BorrowedBooks RETURN SYS_REFCURSOR 
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
    
    ORDER BY LB.Book.Title;
    
END get_BorrowedBooks;
