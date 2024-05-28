<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.Blog2" %>
<%@ page import="model.Slider" %>
<%@ page import="model.Subject2" %>
<%@ page import="java.util.List" %>
<% List<Slider> top8Slider = (List<Slider>)request.getAttribute("top8Slider"); %>
<% List<Subject2> top8Subject = (List<Subject2>)request.getAttribute("top8Subject"); %>
<% List<Blog2> top8Blog = (List<Blog2>)request.getAttribute("top8Blog"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/home2.css">
     
    <!-- Bootstrap file link  -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <!-- header -->
    <%@include file="layout/header.jsp" %>

    <!-- sidebar -->
    <%@include file="layout/filterBar.jsp" %>

    <!-- Slider -->
    <section class="home-grid">
        <div id="myCarousel" class="carousel slide custom-carousel" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <% for (int i = 0; i < top8Slider.size(); i++) { %>
                    <li data-target="#myCarousel" data-slide-to="<%= i %>" <% if (i == 0) { %>class="active"<% } %>></li>
                <% } %>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <% for (int i = 0; i < top8Slider.size(); i++) { %>
                    <div class="item <% if (i == 0) { %>active<% } %>">
                        <img src="images/<%= top8Slider.get(i).getImage() %>" alt="<%= top8Slider.get(i).getTitle() %>"
                            onclick="window.location.href='<%= top8Slider.get(i).getLinkUrl() %>'"
                            style="cursor: pointer;">
                        <div class="carousel-caption">
                            <h3><%= top8Slider.get(i).getTitle() %></h3>
                            <p><%= top8Slider.get(i).getSubTitle() %></p>
                        </div>
                    </div>
                <% } %>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>

    <!-- Courses -->
    <section class="courses">
        <div class="container">
            <div class="courses-header">
                <h1 class="heading">
                    Khóa học pro <i class="fas fa-star" style="color: gold;"></i>
                </h1>
                <a href="#" class="inline-option-btn btn-orange">View All Courses</a>
            </div>
            <div class="row">
                <% for (int i = 0; i < top8Subject.size(); i++) { %>
                    <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                        <div class="card">
                             <img src="images/<%= top8Subject.get(i).getImg() %>" class="card-img-top fixed-size-img subject-img" alt="<%= top8Subject.get(i).getName() %>"
                                data-subject-id="<%= top8Subject.get(i).getId() %>">
                            <div class="card-body">
                                <h5 class="card-title"><%= top8Subject.get(i).getName() %></h5>
                                <p class="card-text"><span class="badge badge-info"><%= top8Subject.get(i).getTag() %></span></p>
                            </div>
                        </div>
                    </div>
                <% } %>
            </div>
        </div>
    </section>

    <!-- Blog -->
    <section class="blog-section">
        <div class="container">
            <div class="blog-header">
                <h1 class="heading">Bài viết mới nhất</h1>
                <a href="#" class="inline-option-btn btn-orange">View All Blog</a>
            </div
            <div class="row">
                <% for (int i = 0; i < top8Blog.size(); i++) { %>
                    <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                        <div class="blog-card">
                            <img src="images/<%= top8Blog.get(i).getThumbnail() %>" class="card-img-top" alt="<%= top8Blog.get(i).getTitle() %>">
                            <div class="card-body">
                                <h5 class="card-title"><%= top8Blog.get(i).getTitle() %></h5>
                                <p class="post-date"><%= top8Blog.get(i).getCreated_at() %></p>
                                <a href="#" class="btn btn-primary">Read More</a>
                            </div>
                        </div>
                    </div>
                <% } %>
            </div>
        </div>
    </section>

    <!-- footer -->
    <%@include file="layout/footer.jsp" %>

    <!-- custom js file link  -->
    <script src="js/script.js"></script>
    
     <!-- Click course image go to detail  -->
    <script>
        $(document).ready(function() {
            $(".subject-img").click(function() {
                var subjectId = $(this).data("subject-id");
                window.location.href = "subjectDetail?subjectId=" + subjectId;
            });
        });
    </script>
</body>
</html>
