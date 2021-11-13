package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Algentem Inc Software Development Team
 */
public class base {
    private String usrBD;
    private String passBD;
    private String urlBD;
    private String driverClassName;
    private Connection conn = null;
    private Statement state;
    
    public base(){
        this.usrBD = "root";
        this.passBD = "n0m3l0";
        this.urlBD = "jdbc:mysql://127.0.0.1:3306/Quantum_XDB?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";///?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC
        this.driverClassName = "com.mysql.jdbc.Driver";

    }

    public void setUsrBD(String usrBD) {
        this.usrBD = usrBD;
    }

    public void setPassBD(String passBD) {
        this.passBD = passBD;
    }

    public void setUrlBD(String urlBD) {
        this.urlBD = urlBD;
    }

    public void setDriverClassName(String driverClassName) {
        this.driverClassName = driverClassName;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public void setState(Statement state) {
        this.state = state;
    }


    public void connect() throws SQLException, ClassNotFoundException {
        try{
            Class.forName(this.driverClassName).newInstance();
            this.conn = DriverManager.getConnection(this.urlBD, this.usrBD, this.passBD);
            
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
            System.out.println("Error "+ e.getMessage());
        }
    }
    public void closeConnection() throws SQLException {
         this.conn.close();
    }
    
    public int insert(String insert) throws SQLException {
        Statement st = (Statement) this.conn.createStatement();
        return st.executeUpdate(insert);
    }   
    
    public ResultSet consult(String consult) throws SQLException {
        this.state = (Statement) conn.createStatement();
        return this.state.executeQuery(consult);
    }
    public int delete(String delete) throws SQLException {
        Statement st = (Statement) this.conn.createStatement();
        return st.executeUpdate(delete);
    }
    public int edit(String edit) throws SQLException {
        Statement st = (Statement) this.conn.createStatement();
        return st.executeUpdate(edit);
    }
}
