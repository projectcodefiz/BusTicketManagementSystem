package busticketmanagement;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Created by 22343017_Abdul Hafiz
 */

public class database {
    
    public static Connection connectDb(){
        
        try{
            
            Class.forName("com.mysql.jdbc.Driver");
            //DATABASE LINK, USERNAME, PASSWORD ROOT IS THE DEFAULT USERNAME 
            Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/busdata_new", "root", ""); 
            return connect;
        }
        catch(Exception e){e.printStackTrace();}
        return null;
    }
}
