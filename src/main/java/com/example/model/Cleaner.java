package com.example.model;

public class Cleaner {
    private int cleanid;
    private String cleanname;
    private String cphone;
    private int floor;

    public int getCleanid() {
        return cleanid;
    }

    public void setCleanid(int cleanid) {
        this.cleanid = cleanid;
    }

    public String getCleanname() {
        return cleanname;
    }

    public void setCleanname(String cleanname) {
        this.cleanname = cleanname;
    }

    public String getCphone() {
        return cphone;
    }

    public void setCphone(String cphone) {
        this.cphone = cphone;
    }


    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    @Override
    public String toString() {
        return "Cleaner{" +
                "cleanid=" + cleanid +
                ", cleanname='" + cleanname + '\'' +
                ", cphone='" + cphone + '\'' +
                ", floor=" + floor +
                '}';
    }
}
