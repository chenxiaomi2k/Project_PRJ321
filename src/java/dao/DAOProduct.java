/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HaiTL
 */
public class DAOProduct {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public DAOProduct() {
    }

    // insert, update, delete, select
    public void addProduct(Product p) {
        String query = "insert into Product values (?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, p.getpID());
            ps.setString(2, p.getpName());
            ps.setInt(3, p.getQuantity());
            ps.setInt(4, p.getPrice());
            ps.setString(5, p.getImage());
            ps.setString(6, p.getDescription());
            ps.setInt(7, p.getStatus());
            ps.setInt(8, p.getCateID());
            ps.executeQuery();
        } catch (Exception ex) {
        }
    }

    public void updateProduct(Product p) {
        String query = "update Product set pname=?, quantity = ?, price=?, image = ?,description=?,status=?,cateID=? where pid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, p.getpName());
            ps.setInt(2, p.getQuantity());
            ps.setInt(3, p.getPrice());
            ps.setString(4, p.getImage());
            ps.setString(5, p.getDescription());
            ps.setInt(6, p.getStatus());
            ps.setInt(7, p.getCateID());
            ps.setInt(8, p.getpID());
            ps.executeUpdate();
        } catch (Exception ex) {
        }
    }

    public Product findProductByName(String name) {
        String query = "select * from  Product where pname like ?";
        try {
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public Product findProductByPrice(int price) {
        String query = "select * from  Product where price = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, price);
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public List<Product> sortProductByPrice() {
        String query = "select * from  Product order by price desc";
        List<Product> listSort = new ArrayList<>();
        try {

            while (rs.next()) {
                listSort.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (SQLException e) {
        }
        return listSort;
    }

    public int changeStt(int pid) {
        int n = 0;
        String query = "update Product set [status] = 0 where pid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pid);
            n = ps.executeUpdate();
        } catch (Exception e) {
        }
        return n;
    }

    public int deleteProduct(int id) {
        int n = 0;
        //step 1: check Bill: has pid? (select)
        //step 1 yes: change status 1-0 of product -- update
        //step 1 no: delete
        String query = "select * from Bill where pid=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
        } catch (Exception ex) {
        }
        try {
            if (rs.next()) {
                n = changeStt(id);
            } else {
                String query1 = "delete from Product where pid = ?";
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query1);
                ps.setInt(1, id);
                n = ps.executeUpdate();
            }
        } catch (Exception e) {
        }
        return n;
    }

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductByID(int id) {
        String query = "select * from Product where pid=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<Product> get2LastProduct(){
        List<Product> list = new ArrayList<>();
        String query = "select top 2 * from Product order by pid desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> pagingHome(int index) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product order by pid offset ? rows fetch next 8 rows only";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 8);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> getAllProductByCategory(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select p.* from Product p, Category c where p.cateID = ? and p.cateID = c.cateID";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi sql
            ps = conn.prepareStatement(query);//nem cau lenh query sang sql
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> searchProduct(String txt) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product where pname like ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi sql
            ps = conn.prepareStatement(query);//nem cau lenh query sang sql
            ps.setString(1, "%" + txt + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> pagingDetail(int index, int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product where cateID = ? order by pid offset ? rows fetch next 4 rows only";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.setInt(2, (index - 1) * 4);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
        DAOProduct dao = new DAOProduct();
        List<Product> list = dao.getAll();
        for (Product product : list) {
            System.out.println(product);
        }
    }
}
