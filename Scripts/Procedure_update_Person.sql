CREATE OR REPLACE PROCEDURE update_Person (inID_Number IN NUMBER, inID_PersonType IN NUMBER, inFirstname IN VARCHAR2, inLastname IN VARCHAR2, inBirthdate VARCHAR2)
AS
  
BEGIN 
        UPDATE
            LB.Person
        SET
            ID_PersonType = inID_PersonType,
            Firstname = inFirstname,
            Lastname = inLastname,
            Birthdate = TO_DATE(inBirthdate, 'yy/mm/dd')
        WHERE 
            ID_Number = inID_Number;
            
END update_Person;
drop procedure update_Person
execute update_Person(305250055, 2, 'Arianna', 'MonteroMerlo', '20-05-18');