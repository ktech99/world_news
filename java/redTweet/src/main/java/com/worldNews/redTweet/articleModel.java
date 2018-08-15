package com.worldNews.redTweet;

import org.springframework.web.bind.annotation.ModelAttribute;

public class articleModel {

    private String ID;
    private String URL;
    private String permaLink;
    private String title;
    private String summary;
    private String[] keywords;
    private String company;
    private String miniSummary;

    public String getMiniSummary() {
        return miniSummary;
    }

    public void setMiniSummary(String miniSummary) {
        if (miniSummary.length() >= 300) {
            this.miniSummary = miniSummary.substring(0, 350);
        } else {
            this.miniSummary = miniSummary;
        }
        this.miniSummary += "...";
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public String getPermaLink() {
        return permaLink;
    }

    public void setPermaLink(String permaLink) {
        this.permaLink = permaLink;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title.substring(0, title.indexOf("-"));
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
        setMiniSummary(summary);
    }

    public String[] getKeywords() {
        return keywords;
    }

    public void setKeywords(String[] keywords) {
        this.keywords = keywords;
    }

}
