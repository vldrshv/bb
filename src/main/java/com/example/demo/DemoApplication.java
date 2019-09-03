package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import java.util.Locale;

@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
//        try {
//            DataBase db = new DataBase();
//            db.setStoredFunction("{ ? = call initial.get_coach_by_email(?) }");
//            List<InOutVar> list = new ArrayList<>();
//            list.add(new InOutVar(Types.OTHER, null, true));
//            list.add(new InOutVar(Types.VARCHAR, "a@a.a", false));
//            db.registerVariablesAndExecute(list);
//            ResultSet resultSet = db.getResultSet();
//
//            while (resultSet.next()) {
//                System.out.println(resultSet.getString("coach_name"));
//                System.out.println(resultSet.getString("pin"));
//            }
//        } catch (SQLException e) {
//            System.out.println("Connection failure.");
//            e.printStackTrace();
//        }
        SpringApplication.run(DemoApplication.class, args);
    }
    @Bean
    public SessionLocaleResolver localeResolver() {
        SessionLocaleResolver slr = new SessionLocaleResolver();
        slr.setDefaultLocale(Locale.US);
        return slr;
    }


}
