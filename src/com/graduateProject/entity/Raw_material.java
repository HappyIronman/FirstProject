package com.graduateProject.entity;

/**
 * Created by dell on 3/6/2017.
 */
public class Raw_material {
    private int id;
    private String name="Empty";
    private int num=0;
    private String provider="Empty";
    private String pur_date="Empty";

    public Raw_material() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getProvider() {
        return provider;
    }

    public void setProvider(String provider) {
        this.provider = provider;
    }

    public String getPur_date() {
        return pur_date;
    }

    public void setPur_date(String pur_date) {
        this.pur_date = pur_date;
    }
}
