package com.example.model;

public class Room {
    private int rid;
    private int rfloor;
    private String bid;

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public int getRfloor() {
        return rfloor;
    }

    public void setRfloor(int rfloor) {
        this.rfloor = rfloor;
    }

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid;
    }

    @Override
    public String toString() {
        return "Room{" +
                "rid=" + rid +
                ", rfloor='" + rfloor + '\'' +
                ", bid=" + bid +
                '}';
    }
}
