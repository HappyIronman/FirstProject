package com.graduateProject.entity;

/**
 * Created by dell on 3/6/2017.
 */
public class Finance {
    private int id;
    private String name;
    private int num;
    private double per_price;
    private String date;
    private String method;

    public Finance() {
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

    public double getPer_price() {
        return per_price;
    }

    public void setPer_price(double per_price) {
        this.per_price = per_price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }
}
