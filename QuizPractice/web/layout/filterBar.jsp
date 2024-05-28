<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="side-bar">

    <div id="close-btn">
        <i class="fas fa-times"></i>
    </div>
    <c:if test="${sessionScope.user != null}">
        <div class="profile">
            <img src="images/pic-1.jpg" class="image" alt="">
            <h3 class="name">shaikh anas</h3>
            <p class="role">studen</p>
            <a href="profile.html" class="btn">view profile</a>
        </div>
    </c:if>

   <nav class="navbar">
    <a href="#"><i class="fas fa-home"></i><span>Home</span></a>
        <a href="#"><i class="fas fa-graduation-cap"></i><span>Subjects</span></a>
    <a href="#"><i class="fas fa-newspaper"></i><span>Posts</span></a>
    </nav>


</div>
