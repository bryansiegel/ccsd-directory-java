package com.ccsd.ccsddirectoryjava.models;

import jakarta.persistence.*;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
public class Contact {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String Name;
    private String Division;
    private String Department;
    private String Position;
    private String Phone;
    private String DialExtension;
    private String Fax;
    private String LocationCode;
    private String Address;

    @CreationTimestamp
    @Column(updatable = false)
    private LocalDateTime createdAt;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getDivision() {
        return Division;
    }

    public void setDivision(String division) {
        Division = division;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String department) {
        Department = department;
    }

    public String getPosition() {
        return Position;
    }

    public void setPosition(String position) {
        Position = position;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getDialExtension() {
        return DialExtension;
    }

    public void setDialExtension(String dialExtension) {
        DialExtension = dialExtension;
    }

    public String getFax() {
        return Fax;
    }

    public void setFax(String fax) {
        Fax = fax;
    }

    public String getLocationCode() {
        return LocationCode;
    }

    public void setLocationCode(String locationCode) {
        LocationCode = locationCode;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "Contact{" +
                "id=" + id +
                ", Name='" + Name + '\'' +
                ", Division='" + Division + '\'' +
                ", Department='" + Department + '\'' +
                ", Position='" + Position + '\'' +
                ", Phone='" + Phone + '\'' +
                ", DialExtension='" + DialExtension + '\'' +
                ", Fax='" + Fax + '\'' +
                ", LocationCode='" + LocationCode + '\'' +
                ", Address='" + Address + '\'' +
                ", createdAt=" + createdAt +
                '}';
    }
}
