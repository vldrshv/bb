package com.example.demo.dao;

import com.example.demo.entity.InOutVar;

import java.sql.*;
import java.util.List;

public class DataBase {

    private Connection connection;
    private CallableStatement cs = null;
    private ResultSet resultSet = null;

    public DataBase() {
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/", "postgres", "1234");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void setStoredFunction(String storedFunction) {
        try {
            connection.setAutoCommit(false);
            this.cs = connection.prepareCall(storedFunction);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void registerVariablesAndExecute(List<InOutVar> varList) {
        InOutVar var = null;
        try {
            for (int i = 0; i < varList.size(); i++) {
                var = varList.get(i);
                if (var.isOutVar)
                    cs.registerOutParameter(i+1, var.type);
                else {
                    setInVar(i+1, var);
                }
            }
            cs.execute();
            setResultSet();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void setInVar(int position, InOutVar var) throws SQLException {
        if (var.object instanceof java.lang.String) {
            cs.setString(position, (String)var.object);
        }
    }

    public ResultSet getResultSet() {
        return resultSet;
    }

    private void setResultSet() throws SQLException {
        this.resultSet = (ResultSet) cs.getObject(1);
    }
}
