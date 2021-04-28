/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBCommands;
import java.sql.*;
import oracle.jdbc.OracleTypes;
/**
 *
 * @author Allison
 */
public class ConnectDB {
    
    public static void insertPerson(int ID_Number, String Firstname, String Lastname, String Birthdate) throws SQLException{
        String host = "jdbc:oracle:thin:@localhost:1521:PROYECTOSTEC";
        String user = "sys as sysdba";
        String password = "merloadmin";
        
        Connection con = DriverManager.getConnection(host, user, password);
        CallableStatement st = con.prepareCall("{ call InsertPerson(?, ?, ?, ?)");
        
        st.setInt(1, ID_Number);
        st.setString(2, Firstname);
        st.setString(3, Lastname);
        st.setString(4, Birthdate);
        st.execute();
    }
}
