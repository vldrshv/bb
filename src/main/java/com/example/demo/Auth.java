package com.example.demo;

import com.example.demo.dao.PlayersDAO;
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


        PlayersDAO pd = new PlayersDAO();
        List<Player> players = pd.getPlayersByTeamId(1);
        for (Player p : players) {
            System.out.println(p.name);
        }

        model.addAttribute("coach", coach);
        model.addAttribute("players", players);

        model.addAttribute("type", type);
        model.addAttribute(type, true);

        System.out.println(type);

        return "home";
    }
}
