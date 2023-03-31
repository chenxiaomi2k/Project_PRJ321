/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Bill;
import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HaiTL
 */
public class DAOBill {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public DAOBill() {
    }

    public void changeStatus(int id, int st) {
        String query = "update Bill set [status] = ? where Bill.oID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, st);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateBill(Bill b) {
        String query = "update Bill set dateCreate=?, cname=?, cphone=?, cAddress=?, total=?, status=?, pid=? where oID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setDate(1, (java.sql.Date) b.getDate());
            ps.setString(2, b.getcName());
            ps.setString(3, b.getcPhone());
            ps.setString(4, b.getAddress());
            ps.setInt(5, b.getTotal());
            ps.setInt(6, b.getStatus());
            ps.setInt(7, b.getpID());
            ps.setInt(8, b.getoID());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public Bill findBillByID(int id) {
        String query = "select * from  Bill where oID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Bill(rs.getInt(1),
                        rs.getDate(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void deleteBill(int id) {
        String query = "delete from Bill where oID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Bill> getAll() {
        List<Bill> list = new ArrayList<>();
        String query = "select * from Bill";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Bill(rs.getInt(1),
                        rs.getDate(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        DAOBill dao = new DAOBill();
        String name = "okla";
        String phone = "0123456789";
        String address = "Quang Ninh";
        int total = 10;
        int st = 1;
        int pid = 2;
        int oid = 4;
        String d = "10/6/2021";
        Date date = null;
        try {
            date = new SimpleDateFormat("dd/MM/yyyy").parse(d);
        } catch (ParseException ex) {
            Logger.getLogger(DAOBill.class.getName()).log(Level.SEVERE, null, ex);
        }
        Bill b = new Bill(oid, date, name, phone, address, total, st, pid);
        dao.updateBill(b);
        System.out.println(b);
    }
}
