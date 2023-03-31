/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author HaiTL
 */
public class Bill {

    private int oID;
    private Date date;
    private String cName;
    private String cPhone;
    private String address;
    private int total;
    private int status;
    private int pID;

    public Bill() {
    }

    public Bill(int oID, Date date, String cName, String cPhone, String address, int total, int status, int pID) {
        this.oID = oID;
        this.date = date;
        this.cName = cName;
        this.cPhone = cPhone;
        this.address = address;
        this.total = total;
        this.status = status;
        this.pID = pID;
    }

    public int getoID() {
        return oID;
    }

    public void setoID(int oID) {
        this.oID = oID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getcPhone() {
        return cPhone;
    }

    public void setcPhone(String cPhone) {
        this.cPhone = cPhone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    @Override
    public String toString() {
        return "Bill{" + "oID=" + oID + ", date=" + date + ", cName=" + cName + ", cPhone=" + cPhone + ", address=" + address + ", total=" + total + ", status=" + status + ", pID=" + pID + '}';
    }

}
