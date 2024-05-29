<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

     <link rel="stylesheet" href="css/profile2.css">
     <link rel="stylesheet" href="css/style.css">
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


    <!-- Edit profile -->
    <section class="user-form-section">
        <div class="container">
            <div class="row">
                <!-- Form column -->
                <div class="col-md-6 col-lg-6 mx-auto">
                    <div class="form-header">
                        <h1 class="heading">Thông tin người dùng</h1>
                    </div>
                    <form action="userUpdate" method="POST" class="user-form">
                        <div class="form-group">
                            <label for="name">Tên:</label>
                            <input type="text" id="name" name="name" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Điện thoại:</label>
                            <input type="text" id="phone" name="phone" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Địa chỉ:</label>
                            <input type="text" id="address" name="address" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <a href="changePassword">Đổi mật khẩu</a>
                        </div>
                        <div class="form-group buttons-inline">
                            <button type="submit" class="btn btn-primary">Lưu thông tin</button>
                            <button type="button" class="btn btn-secondary" onclick="location.href='home'">Quay lại</button>
                        </div>
                    </form>
                </div>
                
                <div class="col-md-6 col-lg-2"></div>
                <!-- Image column -->
                <div class="col-md-6 col-lg-3">
                    <div class="image-container">
                        <img src="images/thumb-1.png" alt="User Profile Image" class="img-responsive">
                        <button type="button" class="btn btn-secondary" onclick="location.href='home'">  <i class="fas fa-upload"></i> Upload</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- footer -->
    <%@include file="layout/footer.jsp" %>

    <!-- custom js file link  -->
    <script src="js/script.js"></script>
</body>
</html>
