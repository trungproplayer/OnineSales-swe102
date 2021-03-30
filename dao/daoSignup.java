//Must Check in your DBcontext when you use it. If DBcontext not connect to you database the code in this file not runing. You please change something in Your DBcontext
package dao;

import Entity.Account;
import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAO {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public DAO() {
        try {
            con = new DBContext().getConnection();
        } catch (Exception e) {
        }
    }

    public Account checkAccount(String username) {
        String sql = "SELECT * FROM HE141261_account WHERE [user] = ? ";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void signup(String username, String password) {
        String sql = "insert into HE141261_account values(?,?,0,0)";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
     public Product getProductById(int id) {
        Product p = null;
        String sql = "SELECT * FROM HE141261_product WHERE id =" + id;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                p = new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (SQLException e) {
        }
        return p;
    }

}
