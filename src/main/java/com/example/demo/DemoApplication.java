package com.example.demo;

import com.example.demo.dao.DataBase;
import com.example.demo.entity.Coach;
import com.example.demo.entity.InOutVar;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
//        try {
        DataBase db = new DataBase();
        db.setStoredFunction("{ ? = call initial.get_coach_by_email(?) }");
        List<InOutVar> list = new ArrayList<>();
        list.add(new InOutVar(Types.OTHER, null, true));
        list.add(new InOutVar(Types.VARCHAR, "a@a.a", false));
        db.registerVariablesAndExecute(list);
        ResultSet resultSet = db.getResultSet();
        Coach coach = new DataUtils<Coach>().convert(new Coach(), resultSet);

        SpringApplication.run(DemoApplication.class, args);
    }
    @Bean
    public SessionLocaleResolver localeResolver() {
        SessionLocaleResolver slr = new SessionLocaleResolver();
        slr.setDefaultLocale(Locale.US);
        return slr;
    }


}
