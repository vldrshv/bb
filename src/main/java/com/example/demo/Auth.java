package com.example.demo;

import com.example.demo.entity.Coach;
import com.example.demo.entity.Player;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @author vldrshv@gmail.com
 */

@Controller
@RequestMapping("/")
@SessionAttributes("name")
public class Auth {

    @RequestMapping(value = "/i", method = RequestMethod.GET)
    public String index(String name, Model model) {
        model.addAttribute("name", name);
        return "index";
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(String name, Model model, @RequestParam(value = "type", required = false, defaultValue = "my_team") String type) {
        Coach coach = new Coach();
        coach.name = "EpicBonVagon";
        coach.email = "myDICKyour_dick@sosay.com";
        

        List<Player> players = new ArrayList<>();
        players.add(new Player("Piska", 1, 2, 6, true, 1, 5, 1, 2, 4));
        players.add(new Player("BigDig", 7, 2, 28, false, 2, 3, 4, 1, 5));
        players.add(new Player("Pyatachok", 0, 10, 20, true, 5, 6, 4, 2, 8));
        players.add(new Player("Pisos", 3, 3, 12, false, 3, 1, 7, 5, 2));

        model.addAttribute("coach", coach);
        model.addAttribute("players", players);

        model.addAttribute("type", type);
        model.addAttribute(type, true);

        System.out.println(type);

        return "home";
    }
}
