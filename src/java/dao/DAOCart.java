/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Cart;
import entity.Customer;
import entity.Item;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author HaiTL
 */
public class DAOCart {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void insertCart(Item i, Customer cus) {
        try {
            conn = new DBContext().getConnection();
            for (Cart c : i.getList()) {
                String query = "insert into Cart values(?,?,?,?,?,?)";
                ps = conn.prepareStatement(query);
                ps.setInt(1, c.getId());
                ps.setString(2, c.getName());
                ps.setInt(3, c.getQuantity());
                ps.setDouble(4, c.getPrice());
                ps.setDouble(5, c.getTotal());
                ps.setString(6, cus.getcName());
                ps.executeUpdate();
            }
        } catch (Exception e) {
        }
    }
}
