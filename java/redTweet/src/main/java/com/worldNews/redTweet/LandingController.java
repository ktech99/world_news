package com.worldNews.redTweet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class LandingController {

    @RequestMapping("/home")
    public String landingPage(Map<String, String> model){
        model.put("title")
        return "index";
    }
}
