<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <title>系統後台</title>
</head>
<body>
	<%@include file="navbar.jspf" %>
    <div class="container theme-showcase" role="main">
    
      <div class="jumbotron" >    
        <h1>大考中心報名系統後台</h1>
        <p class="lead">本系統為大考中心報名系統後台管理</p>
      </div>
      <form action="adminlogin" method="post" role="form">
			<div class="form-group">
			<label>帳號:</label>
			<input type="text" name="username">
			<p class="help-block">使用者帳號</p>
			</div>
			<div class="form-group">
			<label>密碼:</label>
			<input type="password" name="password">
			<p class="help-block">使用者密碼</p>
			</div>
	  		<button type="submit" class="btn btn-default">登入</button>
	  		<label class="label label-warning">${message}</label>
		</form>  

    </div><!-- /.container -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>


</body>
</html>