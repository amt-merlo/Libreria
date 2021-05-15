/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package libreria;

/**
 *
 * @author Allison
 */
public class Person {
    private int ID;
    private int ID_PersonType;
    private String Firstname;
    private String Lastname;
    private String Birthdate;

    //Constructor
    public Person(int ID, int ID_PersonType, String Firstname, String Lastname, String Birthdate) {
        this.ID = ID;
        this.ID_PersonType = ID_PersonType;
        this.Firstname = Firstname;
        this.Lastname = Lastname;
        this.Birthdate = Birthdate;
    }

    //Gets
    public int getID() {
        return ID;
    }

    public int getID_PersonType() {
        return ID_PersonType;
    }

    public String getFirstname() {
        return Firstname;
    }

    public String getLastname() {
        return Lastname;
    }

    public String getBirthdate() {
        return Birthdate;
    }
    
    //Sets

    public void setID(int ID) {
        this.ID = ID;
    }

    public void setID_PersonType(int ID_PersonType) {
        this.ID_PersonType = ID_PersonType;
    }

    public void setFirstname(String Firstname) {
        this.Firstname = Firstname;
    }

    public void setLastname(String Lastname) {
        this.Lastname = Lastname;
    }

    public void setBirthdate(String Birthdate) {
        this.Birthdate = Birthdate;
    }
    
    
}
