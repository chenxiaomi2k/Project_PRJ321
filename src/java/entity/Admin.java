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
public class Admin {

    private int aID;
    private String userName;
    private String password;

    public Admin() {
    }

    public Admin(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public Admin(int aID, String userName, String password) {
        this.aID = aID;
        this.userName = userName;
        this.password = password;
    }

    public int getaID() {
        return aID;
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

    @Override
    public String toString() {
        return "Admin{" + "aID=" + aID + ", userName=" + userName + ", password=" + password + '}';
    }

}
