package com.example.model;

public class Building {
    private int bid;
    private String bname;
    private int fid;

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    @Override
    public String toString() {
        return "Building{" +
                "bid=" + bid +
                ", bname='" + bname + '\'' +
                ", fid=" + fid +
                '}';
    }
}
