package com.example.demo;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataUtils {
    private Object convert(Object obj, ResultSet rs) {
        Field[] fields = obj.getClass().getDeclaredFields();
        String fieldName = "";
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
        return obj;
    }

    public Object getObject(Object obj, ResultSet rs) {
        return convert(obj, rs);
    }
}
