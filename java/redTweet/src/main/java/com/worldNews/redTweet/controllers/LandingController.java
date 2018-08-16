package com.worldNews.redTweet.controllers;

import com.worldNews.redTweet.models.articleModel;
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
        article.setTitle("In Private Meeting, Facebook Exec Warns News Outlets to Cooperate or End Up Dying in 'Hospice' - https://www.commondreams.org/news/2018/08/13/private-meeting-facebook-exec-warns-news-outlets-cooperate-or-end-dying-hospice");
        article.setSummary("During a closed-door and off-the-record meeting last week, top Facebook executive Campbell Brown reportedly warned news publishers that refusal to cooperate with the tech behemoth's efforts to revitalize journalism will leave media outlets dying \"like in a hospice.\"\n" +
                "â€”Judd Legum, ThinkProgress\n" +
                "Reported first by The Australian under a headline which read \"Work With Facebook or Die: Zuckerberg,\" the social media giant has insisted the comments were taken out of context, even as five individuals who attended the four-hour meeting corroborated what Brown had stated.\n" +
                "\"We will help you revitalize journalism... in a few years the reverse looks like I'll be holding hands with your dying business like in a hospice.\"\n" +
                "However, Facebook is refusing to release its transcript and tape of the gathering.\n" +
                "Facebook is saying these comments didn't happen but The Australian has an explosive story on the company's position with publishers.\n" +
                "â€” Ryan Mac (@RMac18) August 13, 2018\n" +
                "Brown's warning about the dire prospects for news outlets that don't get on board with a future in which corporate giants like Facebook are the arbiters of what is and isn't trustworthy news comes as progressives are raising alarm that Facebook's entrance into the world of journalism poses a major threat to non-corporate and left-wing news outlets.\n" +
                "As Common Dreams reported in July, progressives' fears were partly confirmed after Facebook unveiled its first slate of news \"segments\" as part of its Facebook Watch initiative.\n" +
                "While Facebook claims its initiative is part of an effort to combat \"misinformation,\" its first series of segments were dominated by such corporate outlets as Fox News and CNN.\n" +
                "Reacting to Brown's reported assertion that Zuckerberg \"doesn't care about publishers,\" Judd Legum, who writes the Popular Information newsletter,argued, \"Anyone who does care about news needs to understand Facebook as a fundamental threat.\"\n" +
                "\"We desperately need to develop alternative delivery mechanisms to Facebook.\"");
        article.setPermaLink("Reddit link here");
        article.setURL("URL here");
        List<articleModel> articles = new ArrayList<>();
        articles.add(article);
        model.put("articleData", articles);
        return "index";
    }
}
