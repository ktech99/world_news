package com.worldNews.redTweet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LandingController {

    @RequestMapping("/home")
    public String landingPage(){
        System.out.println("reach");
        return "index";
    }
}
