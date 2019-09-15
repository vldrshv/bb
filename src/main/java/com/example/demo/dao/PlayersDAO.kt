package com.example.demo.dao

import com.example.demo.DataUtils
import com.example.demo.entity.InOutVar
import com.example.demo.entity.Player
import java.sql.ResultSet
import java.sql.Types

class PlayersDAO {
    var db: DataBase = DataBase()
    var converter: DataUtils = DataUtils()

    fun getPlayersByTeamId (teamId: Int) : List<Player> {
        db.setStoredFunction("{? = call initial.get_teams_players(?) }")
        val list: ArrayList<InOutVar> = arrayListOf()
        list.add(InOutVar(Types.OTHER, null, true))
        list.add(InOutVar(Types.INTEGER, teamId, false))
        db.registerVariablesAndExecute(list)

        val rs: ResultSet = db.resultSet

        return readList(rs)
    }

    private fun readList (rs: ResultSet): List<Player> {
        var players: ArrayList<Player> = arrayListOf()
        var p: Player?
        while (rs.next()) {
            p = converter.getObject(Player(), rs) as Player
            players.add(p)
        }

        return players
    }
}