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
public class Applicant {
    private int Id;
    private String fname;
    private String mname;
    private String lname;
    private String address;
    private String gender;
    private String phone;
    private String email;
    private String education;
    
    public int getId() {
        return Id;
    }
    public void setId(int Id) {
        this.Id = Id;
    }
 
   
    public String getfname() {
        return fname;
    }
    public void setfname(String fname) {
        this.fname = fname;
    }
    public String getmname() {
        return mname;
    }

    /**
     * @param Name the Name to set
     */
    public void setmname(String mname) {
        this.mname = mname;
    }
    public String getlname() {
        return lname;
    }

    /**
     * @param Name the Name to set
     */
    public void setlname(String lname) {
        this.lname = lname;
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
    public String getgender() {
        return gender;
    }
    public void setgender(String gender) {
        this.gender = gender;
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
  

    




  
    
}
