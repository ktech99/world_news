<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>#02 - Mobile Blog App Interface (HTML/CSS)</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="/css/news.css">


</head>

<body>

<div class="container">
    <!-- Box 1 (Header) -->
    <c:forEach items="${requestScope.article}" var="article">
        <section class="box">
            <header class="box-content">
                <!-- Heading -->
                <div class="box-heading">
                    <h2 class="box-author"><c:out value="${article.getCompany()}"></c:out></h2>
                    <h1 class="box-title"><c:out value="${article.getTitle()}"></c:out></h1>
                    <a href=
                           <c:out value="${article.getPermaLink()}"></c:out> class="box-btn">News site link</a>
                    <br>
                    <a href=
                           <c:out value="${article.getPermaLink()}"></c:out> class="box-btn">Reddit link</a>
                </div>
            </header>

            <!-- Navigation -->
        </section>

        <!-- Box 2 (Article) -->
        <section class="boxMid">
            <article class="box-content">
                <p><c:out value="${article.getSummary()}" escapeXml="false"></c:out></p>
            </article>

            <!-- Navigation -->
        </section>
    </c:forEach>
    <!-- Box 3 (Comments) -->
    <section class="box">
        <section class="box-comments">
            <h2>Comments (45)</h2>
            <a href="#" class="btn-close-alt" title="Close"></a>

            <c:forEach items="${requestScope.tweets}" var="tweet">

                <!-- Comment 1 -->
                <section class="comment-view">
                    <article class="comment">
                        <h3 class="comment-user"><c:out value="${tweet.getUser()}"></c:out></h3>
                        <h4 class="comment-time">3 hours ago</h4>
                        <p><c:out value="${tweet.getTweet()}"></c:out></p>
                    </article>
                </section>
            </c:forEach>
            <nav class="box-navbar">
                <p>Keywords:</p>
                <p>
                    keywords here.
                </p>
            </nav>
        </section>
    </section>
</div>


<script src="/js/news.js"></script>


</body>

</html>
