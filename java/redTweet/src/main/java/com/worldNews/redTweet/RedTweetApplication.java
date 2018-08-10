package com.worldNews.redTweet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = {"com.worldNews.*"})
public class RedTweetApplication {

	public static void main(String[] args) {
		SpringApplication.run(RedTweetApplication.class, args);
	}
}
