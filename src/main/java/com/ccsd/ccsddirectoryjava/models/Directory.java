package com.ccsd.ccsddirectoryjava.models;

import jakarta.persistence.*;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
public class Directory {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String DepartmentName;
    private String PageNumber;
    @CreationTimestamp
    @Column(updatable = false)
    private LocalDateTime createdAt;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDepartmentName() {
        return DepartmentName;
    }

    public void setDepartmentName(String departmentName) {
        DepartmentName = departmentName;
    }

    public String getPageNumber() {
        return PageNumber;
    }

    public void setPageNumber(String pageNumber) {
        PageNumber = pageNumber;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    @Override
    public String toString() {
        return "Directory{" +
                "id=" + id +
                ", DepartmentName='" + DepartmentName + '\'' +
                ", PageNumber='" + PageNumber + '\'' +
                ", createdAt=" + createdAt +
                '}';
    }
}
