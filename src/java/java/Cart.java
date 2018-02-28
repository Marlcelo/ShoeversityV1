package java;

import java.util.HashMap;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Marl
 */
public class Cart {
    
    HashMap<Integer, Integer> cartItems;
    
    public Cart(){
     cartItems = new HashMap<>();
      
    }
    public HashMap getCartItems(){
        return cartItems;
    }
    public void addToCart(Integer itemId, int price){
        cartItems.put(itemId, price);
    }
    
}
