/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author HaiTL
 */
public class BillDetail {

    private int pID;
    private int oID;
    private int quantity;
    private int price;
    private int total;
    private Product p;
    private Bill b;

    public BillDetail() {
    }

    public BillDetail(int pID, int oID, int quantity, int price, int total) {
        this.pID = pID;
        this.oID = oID;
        this.quantity = quantity;
        this.price = price;
        this.total = total;
    }

    public BillDetail(int pID, int oID, int quantity, int price, int total, Product p, Bill b) {
        this.pID = pID;
        this.oID = oID;
        this.quantity = quantity;
        this.price = price;
        this.total = total;
        this.p = p;
        this.b = b;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public int getoID() {
        return oID;
    }

    public void setoID(int oID) {
        this.oID = oID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }

    public Bill getB() {
        return b;
    }

    public void setB(Bill b) {
        this.b = b;
    }

}
