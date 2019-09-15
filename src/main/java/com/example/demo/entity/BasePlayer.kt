package com.example.demo.entity

import com.example.demo.DataMap

open class BasePlayer {
    @DataMap("id")
    var id: Int = -1

    @DataMap("player_type_name")
    var playerTypeName: String = ""

    @DataMap("team_type_id")
    var teamTypeId: Int = -1

    @DataMap("MA")
    var MA: Int = -1
    @DataMap("STR")
    var STR: Int = -1
    @DataMap("AG")
    var AV: Int = -1
    @DataMap("price")
    var defaultPrice: Int = -1

    @DataMap("non_double_skills_available")
    var nonDoubleSkillsAvailableStr: String = ""
}