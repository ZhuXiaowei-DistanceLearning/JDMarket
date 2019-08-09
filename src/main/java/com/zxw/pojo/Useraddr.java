package com.zxw.pojo;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Objects;

/**
 * Created by zxw on 2019/8/9.
 */
@Entity
public class Useraddr {
    private int addressId;
    private String addressProvince;
    private String addressCity;
    private String addressArea;
    private String addressText;
    private int addressAtime;
    private byte addressDefault;
    private int userId;
    private String userName;
    private String userPhone;
    @Basic
    @Column(name = "user_name", nullable = false, length = 50)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    @Basic
    @Column(name = "user_phone", nullable = false, length = 50)
    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    @Id
    @Column(name = "address_id", nullable = false)
    @GeneratedValue(generator = "increment")
    @GenericGenerator(name = "increment", strategy = "increment")
    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    @Basic
    @Column(name = "address_province", nullable = false, length = 20)
    public String getAddressProvince() {
        return addressProvince;
    }

    public void setAddressProvince(String addressProvince) {
        this.addressProvince = addressProvince;
    }

    @Basic
    @Column(name = "address_city", nullable = false, length = 20)
    public String getAddressCity() {
        return addressCity;
    }

    public void setAddressCity(String addressCity) {
        this.addressCity = addressCity;
    }

    @Basic
    @Column(name = "address_area", nullable = false, length = 20)
    public String getAddressArea() {
        return addressArea;
    }

    public void setAddressArea(String addressArea) {
        this.addressArea = addressArea;
    }

    @Basic
    @Column(name = "address_text", nullable = false, length = 100)
    public String getAddressText() {
        return addressText;
    }

    public void setAddressText(String addressText) {
        this.addressText = addressText;
    }

    @Basic
    @Column(name = "address_atime", nullable = false)
    public int getAddressAtime() {
        return addressAtime;
    }

    public void setAddressAtime(int addressAtime) {
        this.addressAtime = addressAtime;
    }

    @Basic
    @Column(name = "address_default", nullable = false)
    public byte getAddressDefault() {
        return addressDefault;
    }

    public void setAddressDefault(byte addressDefault) {
        this.addressDefault = addressDefault;
    }

    @Basic
    @Column(name = "user_id", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Useraddr useraddr = (Useraddr) o;
        return addressId == useraddr.addressId &&
                addressAtime == useraddr.addressAtime &&
                addressDefault == useraddr.addressDefault &&
                userId == useraddr.userId &&
                Objects.equals(addressProvince, useraddr.addressProvince) &&
                Objects.equals(addressCity, useraddr.addressCity) &&
                Objects.equals(addressArea, useraddr.addressArea) &&
                Objects.equals(addressText, useraddr.addressText);
    }

    @Override
    public int hashCode() {
        return Objects.hash(addressId, addressProvince, addressCity, addressArea, addressText, addressAtime, addressDefault, userId);
    }
}
