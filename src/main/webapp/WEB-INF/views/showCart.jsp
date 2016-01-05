<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <title>產品管理</title>
</head>
<body>
	<%@include file="navbar.jspf" %>
    <div class="container theme-showcase" role="main">
    
      <div class="jumbotron" >    
        <h1>產品管理系統</h1>
        <p class="lead">本系統為輔仁大學資訊管理學系之範例程式</p>
      </div>
	<div class="container">
		<div class="row">
			<br>
			<div class="col-md-12">
				<table class="table">
				  	<tr>
				  		<th>產品編號  <a class="btn btn-primary" href="checkout">結帳</a></th>
				  	</tr>
				  	<c:forEach items="${shoppingCart}" var="po">
					  	<tr>
					  		<td>${po}</td>
					  	</tr>
				  	</c:forEach>
				</table>
			</div>
		</div>
	</div>


    </div><!-- /.container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
    $(function(){
    	$(".deleteBtn").click(function(){
    		//alert($(this).attr("data-id"));
    		$("#deleteID").val($(this).attr("data-id"));
    	});
    });
    </script>


</body>
</html>
