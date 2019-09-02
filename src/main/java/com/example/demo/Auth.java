package com.example.demo;

import com.example.demo.entity.Coach;
import com.example.demo.entity.Player;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;


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
    public String home(String name, Model model) {
        Coach coach = new Coach();
        coach.name = "EpicBonVagon";
        coach.email = "myDICKyour_dick@sosay.com";

        List<Player> players = new ArrayList<>();
        players.add(new Player("Piska", 1, 2, 6));
        players.add(new Player("BigDig", 7, 2, 28));
        players.add(new Player("Pyatachok", 0, 10, 20));
        players.add(new Player("Pisos", 3, 3, 12));

        model.addAttribute("coach", coach);
        model.addAttribute("players", players);
        return "home";
    }
}
