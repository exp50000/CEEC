<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <title>後台</title>
</head>
<body>
	<%@include file="navbar.jspf" %>
    <div class="container theme-showcase" role="main">
    
      <div class="jumbotron" >    
        <h1>大考中心報名系統</h1>
        <p class="lead">本系統為大考中心報名系統後台</p>
      </div>
	<div class="container">
		<div class="row">
			<br>
			<div class="col-md-12">
	  			<a class="btn btn-primary" href="insertExaminee">新增</a>
				<table class="table">
				  	<tr>
				  		<th>身分證字號</th>
				  		<th>EMAIL</th>
				  		<th>姓名</th>
				  		<th>密碼</th>
				  		<th>生日</th>
				  		<th>性別</th>
				  		<th>電話</th>
				  		<th>聯絡地址</th>
				  		<th>緊急聯絡人</th>
				  		<th>與緊急聯絡人之關係</th>
				  		<th>緊急聯絡人電話</th>
				  		<th>編輯</th>
				  	</tr>
				  	<c:forEach items="${ExamineeList}" var="examinee">
					  	<tr>
					  		<td>${examinee.ID}</td>
					  		<td>${examinee.email}</td>
					  		<td>${examinee.name}</td>
					  		<td>${examinee.password}</td>
					  		<td>${examinee.birth}</td>
					  		<td>${examinee.gender}</td>
					  		<td>${examinee.phone}</td>
					  		<td>${examinee.address}</td>
					  		<td>${examinee.getEmergencyContact()}</td>
					  		<td>${examinee.getEmergencyContactRelationship()}</td>
					  		<td>${examinee.getEmergencyContactMobile()}</td>
					  		
					  		<td>
					  			<a class="btn btn-default" href="updateExaminee?ID=${examinee.ID}">修改</a>
					  			<a class="btn btn-default btn-danger deleteBtn" href="#" data-toggle="modal" data-target="#deleteModal" data-id="${examinee.ID}">刪除</a>
					  		</td>
					  	</tr>
				  	</c:forEach>
				</table>
			</div>
		</div>
	</div>
	
	

    </div><!-- /.container -->
    
    
    <div class="modal fade bs-example-modal-sm" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">刪除</h4>
                </div>
                <div class="modal-body">
                    <p>確認刪除後，相關之訊息也將刪除</p>
                </div>
                <div class="modal-footer">
	                <form id="deleteForm" action="deleteExaminee" method="post">
	            		<input type="hidden" name="ID" id="deleteID">
	                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	                    <button type="submit" class="btn btn-danger">確認刪除</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    
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
