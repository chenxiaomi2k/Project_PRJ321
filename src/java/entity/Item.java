/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HaiTL
 */
public class Item {

    List<Cart> list;

    public Item() {
        list = new ArrayList<>();
    }

    public List<Cart> getList() {
        return list;
    }

    public int getQuantityByID(int id) {
        return getCartByID(id).getQuantity();
    }

    public Cart getCartByID(int id) {
        for (Cart cart : list) {
            if (cart.getP().getpID() == id) {
                return cart;
            }
        }
        return null;
    }

    public void setList(List<Cart> list) {
        this.list = list;
    }

    public void addCart(Cart c) {
        if (getCartByID(c.getP().getpID()) != null) {
            Cart cart = getCartByID(c.getP().getpID());
            cart.setQuantity(cart.getQuantity() + c.getQuantity());
        } else {
            list.add(c);
        }
    }
    
    public void removeCart(int id) {
        if (getCartByID(id) != null) {
            list.remove(getCartByID(id));
        }
    }
    
    public double getTotal(){
        double t = 0;
        for (Cart c : list) {
            t += (c.getQuantity() * c.getP().getPrice());
        }
        return t;
    }
}
