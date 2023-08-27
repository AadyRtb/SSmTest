package com.example.model;

public class Fireman {
    private int fid;
    private String fname;
    private String fphone;

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
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

    @Override
    public String toString() {
        return "Fireman{" +
                "fid=" + fid +
                ", fname='" + fname + '\'' +
                ", fphone='" + fphone + '\'' +
                '}';
    }
}
