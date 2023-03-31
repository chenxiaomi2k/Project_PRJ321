/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HaiTL
 */
public class DAOAdmin {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public DAOAdmin(){
    }

    // insert, update, delete, select
    public void addAdmin(Admin ad) {
        String query = "insert into Admin(username,password) values(?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, ad.getUserName());
            ps.setString(2, ad.getPassword());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Admin login(String user, String pass){
        String query = "select * from Admin where userName=? and password=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Admin(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Admin checkAccountExist(String username) {
        String query = "select * from Admin where username = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Admin(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Admin findAdminByID(int id){
        String query = "select * from [admin] where adminID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Admin(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void updateAdmin(Admin ad) {
        String query = "update Admin set username=?,password=? where adminID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, ad.getUserName());
            ps.setString(2, ad.getPassword());
            ps.setInt(3, ad.getaID());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int deleteAd(int id) {
        int n = 0;
        String query = "delete from Admin where adminID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            n = ps.executeUpdate();
        } catch (Exception e) {
        }
        return n;
    }
    
    public List<Admin> getAll(){
        List<Admin> list = new ArrayList<>();
        String query = "select * from Admin";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Admin(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
        DAOAdmin dao = new DAOAdmin();
        String s = "hai";
        String p = "12345678";
        Admin a = new Admin(s, p);
        dao.addAdmin(a);
        System.out.println(a);
    }
}
