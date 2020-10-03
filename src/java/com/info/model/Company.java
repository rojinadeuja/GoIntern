/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.model;

/**
 *
 * @author Lenovo G40
 */
public class Company {
     private int Id;
    private String name;
    private String website;
    private String postaladdress;
    private String address;
    private String phone;
    private String email;
    private String details;
    
    public int getId() {
        return Id;
    }
    public void setId(int Id) {
        this.Id = Id;
    }

   
    public String getname() {
        return name;
    }
    public void setname(String name) {
        this.name = name;
    }
    public String getwebsite() {
        return website;
    }

    /**
     * @param Name the Name to set
     */
    public void setwebsite(String website) {
        this.website = website;
    }
    public String getpostaladdress() {
        return postaladdress;
    }

    /**
     * @param Name the Name to set
     */
    public void setpostaladdress(String postaladdress) {
        this.postaladdress = postaladdress;
    }
    public String getaddress() {
        return address;
    }

    /**
     * @param Name the Name to set
     */
    public void setaddress(String address) {
        this.address = address;
    }
  
     public String getphone() {
        return phone;
    }
    public void setphone(String phone) {
        this.phone = phone;
    }
    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email = email;
    }
   
    public String getdetails() {
        return details;
    }

    public void setdetails(String details) {
        this.details = details;
    }





  
    
}
