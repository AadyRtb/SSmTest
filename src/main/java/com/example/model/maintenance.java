package com.example.model;

public class maintenance {
    private int mid;
    private String mname;
    private int floor;
    private String mphone;

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }


    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public String getMphone() {
        return mphone;
    }

    public void setMphone(String mphone) {
        this.mphone = mphone;
    }

    @Override
    public String toString() {
        return "maintenance{" +
                "mid=" + mid +
                ", mname='" + mname + '\'' +
                ", floor=" + floor +
                ", mphone='" + mphone + '\'' +
                '}';
    }
}
