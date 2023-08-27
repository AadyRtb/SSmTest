package com.example.model.compoundtype;

public class Comtype1 {
    private String bname;
    private String fname;
    private String fphone;
    private String rmname;
    private String rmphone;

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getFphone() {
        return fphone;
    }

    public void setFphone(String fphone) {
        this.fphone = fphone;
    }

    public String getRmname() {
        return rmname;
    }

    public void setRmname(String rmname) {
        this.rmname = rmname;
    }

    public String getRmphone() {
        return rmphone;
    }

    public void setRmphone(String rmphone) {
        this.rmphone = rmphone;
    }

    @Override
    public String toString() {
        return "result1{" +
                "bname='" + bname + '\'' +
                ", fname='" + fname + '\'' +
                ", fphone='" + fphone + '\'' +
                ", rmname='" + rmname + '\'' +
                ", rmphone='" + rmphone + '\'' +
                '}';
    }
}
