<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<title>Update Product</title>
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
			<div class="col-md-3"></div>
			<div class="col-md-6">
			
				<form method="post" action="updateExaminee" id="updateForm">
					<input type="hidden" name="id" value="${examinee.ID}">
					


		<p></p>
        <label>姓名:</label>
        <input class="form-control" type="text" id="name" name="name"  value= "${examinee.name}" placeholder="姓名">
        <p></p>
        
        
        <label>性別:</label> <select class="form-control" name="gender" >
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
		<p></p>
		<label>生日:</label>
		<input class="form-control" type="date" id="birth" name="birth" placeholder="1990/01/01" value="${examinee.birth}">
		<p></p>
		<label>身分證字號:</label>
		<P><label class="label label-warning">${message}</label></P>
        <input class="form-control" type="text" id="ID" name="ID" placeholder="身分證字號" value="${examinee.ID}">
        <p></p>
       
        <label>EMAIL:</label>
        <p><label class="label label-warning">${message2}</label></p>
        <input class="form-control" type="email" id="email" name="email" placeholder="Email" value="${examinee.email}">
        <p></p>
        
        <label>密碼:</label>
        <input class="form-control" type="password" id="password" name="password" placeholder="密碼" value="${examinee.password}">
        <p></p>

         <label>聯絡電話:</label>     
        <input class="form-control" type="text" id="phone" name="phone" placeholder="聯絡電話" value="${examinee.phone}">
        <p></p>
        <label>地址:</label>
        <input class="form-control" type="text" id="address" name="address" placeholder="通訊地址" value="${examinee.address}">
        <p></p>
        <label>緊急聯絡人姓名:</label>
        <input class="form-control" type="text" id="EmergencyContact" name="EmergencyContact" placeholder="緊急連絡人姓名" value="${examinee.getEmergencyContact()}">
        <p></p>
        <label>與緊急聯絡人之關係:</label>
        <input class="form-control" type="text" id="EmergencyContactRelationship" name="EmergencyContactRelationship" placeholder="與緊急連絡人之關係" value="${examinee.getEmergencyContactRelationship()}">
        <p></p>
        <label>緊急聯絡人電話:</label>
        <input class="form-control" type="text" id="EmergencyContactMobile" name="EmergencyContactMobile" placeholder="緊急連絡人電話" value="${examinee.getEmergencyContactMobile()}">
        <p></p>
					<button type="submit" class="btn btn-primary">修改</button>
				</form>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
	</div><!-- /.container -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.validate.js"></script>
	<script src="js/additional-methods.js"></script>
	<script src="js/messages_zh_TW.js"></script>
	<script>
	$("#updateForm").validate();
	</script>
</body>
</html>