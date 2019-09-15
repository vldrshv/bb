package com.example.demo.entity;

import com.example.demo.DataMap;

public class Player {
    @DataMap("id")
    public Integer id = -1;
    @DataMap("name")
    public String name;
    @DataMap("player_type_id")
    public Integer playerTypeId;
    @DataMap("skills_earned")
    public String skillsEarnedStr;
    @DataMap("current_price")
    public Integer currentPrice;
    @DataMap("is_available")
    public Boolean isAvailable;
    @DataMap("missing_next_match")
    public Boolean isMissingNextMatch;
    @DataMap("team_id")
    public Integer teamId;
    @DataMap("MA_current")
    public Integer MAcurrent;
    @DataMap("STR_current")
    public Integer STRcurrent;
    @DataMap("AG_current")
    public Integer AGcurrent;
    @DataMap("AV_current")
    public Integer AVcurrent;

    BasePlayer basePlayerParams;

    @Override
    public String toString() {
        return "Player{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", playerTypeId=" + playerTypeId +
                ", skillsEarnedStr='" + skillsEarnedStr + '\'' +
                ", currentPrice=" + currentPrice +
                ", isAvailable=" + isAvailable +
                ", isMissingNextMatch=" + isMissingNextMatch +
                ", teamId=" + teamId +
                ", MAcurrent=" + MAcurrent +
                ", STRcurrent=" + STRcurrent +
                ", AGcurrent=" + AGcurrent +
                ", AVcurrent=" + AVcurrent +
                ", basePlayerParams=" + basePlayerParams +
                '}';
    }

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

    public Integer getPlayerTypeId() {
        return playerTypeId;
    }

    public void setPlayerTypeId(Integer playerTypeId) {
        this.playerTypeId = playerTypeId;
    }

    public String getSkillsEarnedStr() {
        return skillsEarnedStr;
    }

    public void setSkillsEarnedStr(String skillsEarnedStr) {
        this.skillsEarnedStr = skillsEarnedStr;
    }

    public Integer getCurrentPrice() {
        return currentPrice;
    }

    public void setCurrentPrice(Integer currentPrice) {
        this.currentPrice = currentPrice;
    }

    public Boolean getIsAvailable() {
        return isAvailable;
    }

    public void setIsAvailable(Boolean available) {
        isAvailable = available;
    }

    public Boolean getMissingNextMatch() {
        return isMissingNextMatch;
    }

    public void setMissingNextMatch(Boolean missingNextMatch) {
        isMissingNextMatch = missingNextMatch;
    }

    public Integer getTeamId() {
        return teamId;
    }

    public void setTeamId(Integer teamId) {
        this.teamId = teamId;
    }

    public Integer getMAcurrent() {
        return MAcurrent;
    }

    public void setMAcurrent(Integer MAcurrent) {
        this.MAcurrent = MAcurrent;
    }

    public Integer getSTRcurrent() {
        return STRcurrent;
    }

    public void setSTRcurrent(Integer STRcurrent) {
        this.STRcurrent = STRcurrent;
    }

    public Integer getAGcurrent() {
        return AGcurrent;
    }

    public void setAGcurrent(Integer AGcurrent) {
        this.AGcurrent = AGcurrent;
    }

    public Integer getAVcurrent() {
        return AVcurrent;
    }

    public void setAVcurrent(Integer AVcurrent) {
        this.AVcurrent = AVcurrent;
    }

    public BasePlayer getBasePlayerParams() {
        return basePlayerParams;
    }

    public void setBasePlayerParams(BasePlayer basePlayerParams) {
        this.basePlayerParams = basePlayerParams;
    }
}