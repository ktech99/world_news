package com.worldNews.redTweet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class LandingController {

    @RequestMapping("/home")
    public String landingPage(Map<String, Object> model){
        articleModel article = new articleModel();
        article.setID("1");
        article.setTitle("Elon Musk’s mystery Tesla buyout funder is Saudi Arabia");
        article.setSummary("very long summary here");
        article.setPermaLink("Reddit link here");
        List<articleModel> articles = new ArrayList<>();
        articles.add(article);
        model.put("articleData", articles);
        return "index";
    }
}
