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
    
    public static void insertEmail(int id, String email) throws SQLException{
        String host = "jdbc:oracle:thin:@localhost:1521:PROYECTOSTEC";
        String user = "sys as sysdba";
        String password = "merloadmin";
        
        Connection con = DriverManager.getConnection(host, user, password);
        CallableStatement st = con.prepareCall("{ call InsertEmail(?, ?)");
        
        st.setInt(1, id);
        st.setString(2, email);
        st.execute();
    }
    
    public static void insertAddress(int id, String address) throws SQLException{
        String host = "jdbc:oracle:thin:@localhost:1521:PROYECTOSTEC";
        String user = "sys as sysdba";
        String password = "merloadmin";
        
        Connection con = DriverManager.getConnection(host, user, password);
        CallableStatement st = con.prepareCall("{ call InsertAddress(?, ?)");
        
        st.setInt(1, id);
        st.setString(2, address);
        st.execute();
    }
    
    public static void getBooks() throws SQLException{
        String host = "jdbc:oracle:thin:@localhost:1521:PROYECTOSTEC";
        String user = "sys as sysdba";
        String password = "merloadmin";
        
     
        
        Connection con = DriverManager.getConnection(host, user, password);
        CallableStatement st = con.prepareCall("{? = call get_Books}");
        st.registerOutParameter(1, OracleTypes.CURSOR);
        
        st.executeQuery();
        ResultSet r = (ResultSet) st.getObject(1);
        
        while(r.next()){
            //System.out.println(r.getString("TITLE"));
        }
    }
}
