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
public class Customer {

    private int cID;
    private String cName;
    private String cPhone;
    private String address;
    private String userName;
    private String password;
    private int status;

    public Customer() {
    }

    public Customer(int cID, String cName, String cPhone, String address, String userName, String password, int status) {
        this.cID = cID;
        this.cName = cName;
        this.cPhone = cPhone;
        this.address = address;
        this.userName = userName;
        this.password = password;
        this.status = status;
    }

    public Customer(String cName, String cPhone, String address, String userName, String password, int status) {
        this.cName = cName;
        this.cPhone = cPhone;
        this.address = address;
        this.userName = userName;
        this.password = password;
        this.status = status;
    }

    public int getcID() {
        return cID;
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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
