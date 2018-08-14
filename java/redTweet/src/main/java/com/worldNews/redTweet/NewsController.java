package com.worldNews.redTweet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import twitter4j.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class NewsController {

    @RequestMapping("/news")
    public String news(Map<String, List<Object>> model){
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
        List<Object> tweetList = new ArrayList<>();
        TwitterModel tweets = new TwitterModel();
        tweets.setUser("User 1");
        tweets.setTweet("This is one long tweet");
        tweetList.add(tweets);
        model.put("tweets", tweetList);
        return "news";
    }
}
