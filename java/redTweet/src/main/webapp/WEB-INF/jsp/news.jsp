<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>#02 - Mobile Blog App Interface (HTML/CSS)</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  
      <link rel="stylesheet" href="/css/news.css">

  
</head>

<body>

  <div class="container">
  <!-- Box 1 (Header) -->
  <section class="box">
    <header class="box-content">
      <!-- Heading -->
      <div class="box-heading">
        <h2 class="box-author">Mark Manson</h2>
        <h1 class="box-title">The dark Side of the Digital Nomad</h1>
        <a href="#" class="box-btn">News site link</a>
        <br>
        <a href="#" class="box-btn">Reddit link</a>
      </div>
    </header>

    <!-- Navigation -->
  </section>

  <!-- Box 2 (Article) -->
  <section class="box">
    <article class="box-content">
      <p>The following is the original piece I wrote for CNN last year entrepreneurs, also known as "digital nomads." Since the whole "Work Online, Travel the World and Live the Dream" angle had been done to death in a million places, I decided to go the
        other direction and show the dark side of being a digital nomad — the challenges one faces, the emotional pitfalls, the social sacrifices.</p>
      <p>Predictably, CNN hated it. The editors hacked it to pieces and asked me to rewrite sections to make it less gloomy. But I was always fond of the original, so I'm posting it here unabridged.</p>
    </article>

    <!-- Navigation -->
  </section>

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
        <p >
          keywords here.
        </p>
      </nav>
    </section>
  </section>
</div>
  
  

    <script  src="/js/news.js"></script>




</body>

</html>
