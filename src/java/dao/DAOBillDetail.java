/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Bill;
import entity.BillDetail;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HaiTL
 */
public class DAOBillDetail {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public DAOBillDetail() {
    }

    public List<BillDetail> getAll(Product p, Bill b) {
        List<BillDetail> list = new ArrayList<>();
        String query = "select * from BillDetail";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BillDetail(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        p,
                        b));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<BillDetail> getBillDetailByOID(int id) {
        List<BillDetail> list = new ArrayList<>();
        String query = "select p.pname, b.cname, bd.price, bd.quantity, bd.total from Product p, Bill b, BillDetail bd\n"
                + "where p.pid = bd.pid and b.oID = bd.oID and bd.oID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BillDetail(rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
}
