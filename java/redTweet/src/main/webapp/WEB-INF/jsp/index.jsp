<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Articles</title>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900,100' rel='stylesheet' type='text/css'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">


    <link rel="stylesheet" href="/css/style.css">


</head>

<body>


<main>
    <section class="article-feed">
        <c:forEach items="${requestScope.articleData}" var="articleData">
            <article class="article">
                <header>
                    <div class="article-info">
                        <h2><c:out value="${articleData.getTitle()}"></c:out></h2>
                        <p>Posted on:</p>
                            <%--<div class="article-category"><span class="category-color category-two">Marketing</span></div>--%>
                    </div>
                </header>
                <section>
                    <div class="text-holder">
                        <p>
                            <c:out value="${articleData.getMiniSummary()}"></c:out>
                        </p>
                        <a class="read-more" href="#"
                           onclick="document.getElementById('${articleData.getID()}').submit();">
                            Read More
                        </a>
                    </div>
                </section>
                <footer></footer>
            </article>
            <form id="${articleData.getID()}" style="visibility:hidden" action="/news" method="post">
                <input name="${articleData.getURL()}" type="text">
                <input name="${articleData.getPermaLink()}" type="text">
                <input name="${articleData.getTitle()}" type="text">
                <input name="${articleData.getSummary()}" type="text">
                <input name="${articleData.getKeywords()}" type="text">
                <input name="${articleData.getCompany()}" type="text">
                <input id="${articleData.getID()}" type="submit">
            </form>
        </c:forEach>
    </section>
</main>


</body>

</html>
