/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isd.wsd;

/**
 *
 * @author lucas
 */
public class Customer extends User {

    private String name;
    private String phone;

    public Customer(String name, String phone, String username, String password) {
        super(username, password);
        this.name = name;
        this.phone = phone;
    }

}
