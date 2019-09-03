package com.example.demo.entity;

import com.example.demo.DataMap;

public class Coach {
    @DataMap("id")
    public Integer id;
    @DataMap("coach_name")
    public String name;
    @DataMap("email")
    public String email;
    @DataMap("pin")
    public String pin;
    @DataMap("location_id")
    public Integer locationId;
    @DataMap("team_id")
    public Integer teamId;

    public Float avgPoints = 0.49f;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public Integer getLocationId() {
        return locationId;
    }

    public void setLocationId(Integer locationId) {
        this.locationId = locationId;
    }

    public Integer getTeamId() {
        return teamId;
    }

    public void setTeamId(Integer teamId) {
        this.teamId = teamId;
    }

    public Float getAvgPoints() {
        return avgPoints;
    }

    public void setAvgPoints(Float avgPoints) {
        this.avgPoints = avgPoints;
    }

    @Override
    public String toString() {
        return "Coach{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", pin='" + pin + '\'' +
                ", locationId=" + locationId +
                ", teamId=" + teamId +
                ", avgPoints=" + avgPoints +
                '}';
    }
}
