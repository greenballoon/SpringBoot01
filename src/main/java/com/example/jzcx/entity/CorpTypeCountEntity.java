package com.example.jzcx.entity;



import org.springframework.boot.autoconfigure.domain.EntityScan;

import java.sql.Date;

@EntityScan
public class CorpTypeCountEntity {
    private String name;
    private String value;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
