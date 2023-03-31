/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HaiTL
 */
public class DAOCategory {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public DAOCategory() {       
    }

    // insert, update, delete, select
    public void addCategory(Category cate) {
        String query = "insert into Category(cateName,status) values(?,?)";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, cate.getCateName());
            ps.setInt(2, cate.getStatus());
            ps.executeQuery();
        } catch (Exception e) {
        }

    }

    public Category findCateByID(int id) {
        String query = "select * from  Category where cateID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void updateCate(Category cate) {
        String query = "update Category set cateName=?,status=? where cateID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cate.getCateName());
            ps.setInt(2, cate.getStatus());
            ps.setInt(3, cate.getCateID());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public int deleteCate(int cateid) {
        int n = 0;
        String query = "delete from Category where cateID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, cateid);
            n = ps.executeUpdate();
        } catch (Exception e) {
        }
        return n;
    }
    public List<Category> getAll(){
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {                
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
        String s = "ssssss";
        int st = 1;
        DAOCategory dao = new DAOCategory();
        Category cate = new Category(s, st);
        dao.addCategory(cate);
        System.out.println(cate);
    }
}
