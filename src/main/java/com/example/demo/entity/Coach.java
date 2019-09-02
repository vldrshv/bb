package com.example.demo.entity;

public class Coach {
    public int id;
    public String name;
    public String email;
    public String pin;
    public int locationId;
    public int teamId;

    public float avgPoints = 0.49f;

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

    public int getLocationId() {
        return locationId;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }

    public int getTeamId() {
        return teamId;
    }

    public void setTeamId(int teamId) {
        this.teamId = teamId;
    }

    public float getAvgPoints() {
        return avgPoints;
    }

    public void setAvgPoints(float avgPoints) {
        this.avgPoints = avgPoints;
    }
}
