<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" >

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
    <article class="article">
      <header>
        <div class="article-info">
          <h2>Example Post</h2>
          <p>Posted on</p>
          <time datetime="2009-09-04T16:31:24+02:00">September 4th 2009 </time>
        </div>
        <div class="article-category"><span class="category-color category-two">Marketing</span></div>
      </header>
      <section>
        <div class="text-holder">
          <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae in eligendi exercitationem voluptatem cupiditate culpa dolor perferendis, vero, animi magnam quos. Laboriosam, totam accusantium rerum. Quo minima quod similique aperiam... </p><a class="read-more" href="#">Read More</a>
        </div>
      </section>
      <footer></footer>
    </article>
    <article class="article">
      <header>
        <div class="article-info">
          <h2>Example Post</h2>
          <p>Posted on</p>
          <time datetime="2009-09-04T16:31:24+02:00">September 4th 2009 </time>
        </div>
        <div class="article-category"><span class="category-color category-one">Development</span></div>

      </header>
      <section>
        <div class="text-holder">
          <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae in eligendi exercitationem voluptatem cupiditate culpa dolor perferendis, vero, animi magnam quos. Laboriosam, totam accusantium rerum. Quo minima quod similique aperiam... </p><a class="read-more" href="#">Read More</a>
        </div>
      </section>
      <footer></footer>
    </article>
  </section>
</main>



</body>

</html>
