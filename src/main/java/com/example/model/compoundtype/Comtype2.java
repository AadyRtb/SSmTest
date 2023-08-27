package com.example.model.compoundtype;

public class Comtype2 {
    private int rid;
    private String cleanname;
    private String cphone;
    private String mname;
    private String mphone;

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
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

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMphone() {
        return mphone;
    }

    public void setMphone(String mphone) {
        this.mphone = mphone;
    }

    @Override
    public String toString() {
        return "Comtype2{" +
                "rid=" + rid +
                ", cleanname='" + cleanname + '\'' +
                ", cphone='" + cphone + '\'' +
                ", mname='" + mname + '\'' +
                ", mphone='" + mphone + '\'' +
                '}';
    }
}
