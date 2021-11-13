/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package connection;

import java.sql.*;
 
public class UserDao{
 
    public User checkLogin(String id_user, String user_pass) throws SQLException, ClassNotFoundException {
        
        String jdbcURL = "jdbc:mysql://127.0.0.1:3306/Quantum_XDB?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String dbUser = "root";
        String dbPassword = "n0m3l0";
 
        Class.forName("com.mysql.jdbc.Driver");
        User user = null;
        try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword)) {
            String sql = "SELECT * FROM users WHERE id_user = ? and user_pass = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id_user);
            statement.setString(2, user_pass);
            ResultSet result = statement.executeQuery();
            user = null;
            if (result.next()) {
                user = new User();
                user.setName(result.getString("user_name"));
                user.setLastname(result.getString("user_lastname"));
                user.setEmail(result.getString("email"));
                user.setRol(result.getString("rol"));
                user.setUser(id_user);
            }
        } catch(Exception e) {
            System.err.println(e);
        }
            return user;
    }
}
