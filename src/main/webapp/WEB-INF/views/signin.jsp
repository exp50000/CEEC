<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>大考中心登入</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <form class="form-signin" action="login" method="post" role="form">
        <h2 class="form-signin-heading"></h2>
        <label for="ID" class="sr-only">身分證字號</label>
        <input type="text" name="email" class="form-control" placeholder="電子郵件信箱" required autofocus>
        <label for="inputPassword" class="sr-only">密碼</label>
        <input type="password" name="password" class="form-control" placeholder="密碼" required>
        <center>    
          <a class="push btn btn-lg btn-warning widthchg" role="button" href="register">填寫資料註冊</a>
          <button class="push btn btn-lg btn-primary widthchg2" type="submit">登入</button>
        </center>
      </form>
      
      <div class="warn">
       <label class="label-warn">${message}</label>
      </div>

      <center>
        <div class="foot">
          <p>&copy; 大學入學考試中心 𐄁 <a href="admin">後台管理</a></p>
        </div>
      </center>

     

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
