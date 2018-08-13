package com.worldNews.redTweet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import twitter4j.*;

import java.util.List;

@Controller
public class NewsController {

    @RequestMapping("/news")
    public String news(){
//        Twitter twitter = new TwitterFactory().getInstance();
//        try {
//            Query query = new Query("hello");
//            QueryResult result;
//            do {
//                result = twitter.search(query);
//                List<Status> tweets = result.getTweets();
//                for (Status tweet : tweets) {
//                    System.out.println("@" + tweet.getUser().getScreenName() + " - " + tweet.getText());
//                }
//            } while ((query = result.nextQuery()) != null);
//            //System.exit(0);
//        } catch (TwitterException te) {
//            te.printStackTrace();
//            System.out.println("Failed to search tweets: " + te.getMessage());
//            //System.exit(-1);
//        }
        return "news";
    }
}
