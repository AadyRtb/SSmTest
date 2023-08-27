package com.example.model;

public class ResidentManager {
    private int rmid;
    private String rmname;
    private String rmphone;
    private int bid;

    public int getRmid() {
        return rmid;
    }

    public void setRmid(int rmid) {
        this.rmid = rmid;
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

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    @Override
    public String toString() {
        return "ResidentManager{" +
                "rmid=" + rmid +
                ", rmname='" + rmname + '\'' +
                ", rmphone='" + rmphone + '\'' +
                ", bid=" + bid +
                '}';
    }
}
