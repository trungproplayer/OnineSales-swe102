package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author trinh
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Trungnxhe141261_Product";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Trungnxhe141261_Category";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getLast() {
        String query = "select top 1 * from Trungnxhe141261_Product\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Trungnxhe141261_Product\n "
                + "where cateID=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Account> getALLAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from Trungnxhe141261_Account";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi sql
            ps = conn.prepareStatement(query);//nem cau lenh query sang sql
            rs = ps.executeQuery();//chay cau lenh query, nhan ket qua tra ve
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                ));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public void DeleteAccountById(String uid) {
        String query = "delete from Trungnxhe141261_Account\n"
                + "where uID=?";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Trungnxhe141261_Product\n "
                + "where Sell_ID=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductByID(String id) {
//        List<Product> list = new ArrayList<>();
        String query = "select * from Trungnxhe141261_Product\n "
                + "where id=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //search san san tren thanh placeholder search follow by txt
    public List<Product> getProductBySearchName(String search) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Trungnxhe141261_Product\n "
                + "where [name] like ?  ";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void setSeller(int uid, int value) {
        String sql = "update Trungnxhe141261_Account set isSell = ? where uID = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, value + "");
            ps.setString(2, uid + "");
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account Login(String user, String pass) {
        String query = "select * from Trungnxhe141261_Account\n"
                + "where [user]=? and\n"
                + "pass=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
                

            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String query = "select * from Trungnxhe141261_Account\n"
                + "where [user]=?\n";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);

            rs = ps.executeQuery();

            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));

            }
        } catch (Exception e) {
        }
        return null;
    }

    public void SignUp(String user, String pass) {
        String query = "insert into Trungnxhe141261_Account\n"
                + "values(?,?,0,0)";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }
    //delete san pham theo id

    public void DeleteProductById(String pid) {
        String query = "delete from Trungnxhe141261_Product\n"
                + "where id=?";

        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void insertProduct(String name, String image,
            String price, String title, String description, String category, int sid) {
        String query = "INSERT INTO Trungnxhe141261_Product\n"
                + "           ([name]\n"
                + "           ,[image]\n"
                + "           ,[price]\n"
                + "           ,[title]\n"
                + "           ,[description]\n"
                + "           ,[cateID]\n"
                + "           ,[sell_ID])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setInt(7, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void editProduct(String name, String image,
            String price, String title, String description, String category, String pid) {
        String query = "UPDATE Trungnxhe141261_Product\n"
                + "   SET [name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[title] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[cateID] = ?\n"
                + " WHERE id=?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public int discount(String capchar) {
        String sql = "select value from Trungnxhe141261_Discount where capchar = ?";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, capchar);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void loadOrderToDB(int uID, int phone){
        int orderID = getMaxOrderID() + 1;
        String sql = "insert into Trungnxhe141261_Order values(?,?,?)";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, orderID+"");
            ps.setString(2, uID+"");
            ps.setString(3, phone+"");
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public int getMaxOrderID(){
        int orderID = -1;
        String sql1 = "select MAX(OrderID) from Trungnxhe141261_Order";
        try {
            ps = conn.prepareStatement(sql1);
            rs = ps.executeQuery();
            while(rs.next()){
                orderID = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return orderID; 
    }
    public void loadOrderDetailToDB(int pID, double unitPrice, int quantity){
        int orderID = getMaxOrderID();
        String sql = "insert into Trungnxhe141261_OrderDetail values(?,?,?,?)";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, orderID+"");
            ps.setString(2, pID+"");
            ps.setString(3, unitPrice+"");
            ps.setString(4, quantity+"");
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();

        for (Category o : listC) {
            System.out.println(o);
        }
    }

}
