/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HP
 */
public class DAOCustomer {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public DAOCustomer() {
    }

    // insert, update, delete, select
    public void addCustomer(Customer cus) {
        String query = "insert into Customer(cname,cphone,cAddress,username,password,status) values (?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cus.getcName());
            ps.setString(2, cus.getcPhone());
            ps.setString(3, cus.getAddress());
            ps.setString(4, cus.getUserName());
            ps.setString(5, cus.getPassword());
            ps.setInt(6, cus.getStatus());
            ps.executeQuery();
        } catch (Exception e) {
        }
    }

    public void updateCustomer(Customer cus) {

        String query = "update Customer set cname=?,cphone=?,cAddress=?,username=?,password=?,status=? where cid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cus.getcName());
            ps.setString(2, cus.getcPhone());
            ps.setString(3, cus.getAddress());
            ps.setString(4, cus.getUserName());
            ps.setString(5, cus.getPassword());
            ps.setInt(6, cus.getStatus());
            ps.setInt(7, cus.getcID());
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public Customer login(String user, String pass){
        String query = "select * from Customer where username=? and password=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Customer checkAccountExist(String username) {
        String query = "select * from Customer where username = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void displayAllCustomer() {
        String sql = "select * from Customer";
        try {
            //TYPE_FORWARD_ONLY: default, con tro bản ghi top - down only
            // Statement state=conn.createStatement();
            //TYPE_SCROLL_SENSITIVE: thread safe
            //CONCUR_READ_ONLY: default no modify rs
            //CONCUR_UPDATABLE: modify rs
            Statement state = conn.createStatement(
                    ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = state.executeQuery(sql);
//            ResultSet rs=dbConn.getData(sql);
            while (rs.next()) {
//                rs.getDataType(index|fieldName);
//                DataType is DataType of fieldName
                int cid = rs.getInt("cid");//rs.getInt(2);
                String cname = rs.getString(2);//rs.getString("cname");
                String cphone = rs.getString("cphone"),
                        cAddress = rs.getString(4),
                        username = rs.getString(5),
                        password = rs.getString(6);
                int status = rs.getInt(7);
                Customer cus = new Customer(cid, cname, cphone, cAddress, username, password, status);
                System.out.println(cus);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOCustomer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteCus(int cid) {
        String query = "delete from Customer where cid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Customer> getAll() {
        List<Customer> list = new ArrayList<>();
        String query = "select * from Customer";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Customer getCusByID(int id) {
        String query = "select * from Customer where cid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        DAOCustomer dao = new DAOCustomer();
    }

}
