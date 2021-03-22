package DAO;

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

    public void signup(String username, String password) {
        String sql = "insert into HE141261_account values(?,?,0,0)";
        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }
}
