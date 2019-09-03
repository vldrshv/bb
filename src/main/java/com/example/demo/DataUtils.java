package com.example.demo;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataUtils<T> {
    public T convert (T obj, ResultSet rs){
        Class<?> cl = obj.getClass();
        Field[] fields = cl.getDeclaredFields();
        String fieldName = "";
        while(true) {
            try {
                if (!rs.next()) break;
            } catch (SQLException e) {
                e.printStackTrace();
            }
            for (Field f : fields) {
                if (f.isAnnotationPresent(DataMap.class)) {
                    fieldName = f.getAnnotation(DataMap.class).value();
                    try {
                        f.set(obj, rs.getObject(fieldName));
                    } catch (IllegalAccessException | SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return obj;
    }
}
