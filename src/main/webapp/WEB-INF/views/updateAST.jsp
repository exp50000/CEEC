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
			
				<form method="post" action="updateAST" id="updateForm">
					<input type="hidden" name="ID" value="${ASTscore.ID}">
					
        <label>報名編號:${ASTscore.ID}</label>
        <p></p>
        <label>准考證號碼:</label>
        <input class="form-control" type="text" id="name" name="testnumber"   value= "${ASTscore.getTestnumber()}" >
        <p></p>
		<p></p>
        <label>國文:</label>
        <input class="form-control" type="text" id="name" name="chinese"  min="0" max="100" value= "${ASTscore.getChinese()}" >
        <p></p>
        
		<p></p>
		<label>英文:</label>
		<input class="form-control" type="text" id="birth" name="english"  min="0" max="100" value="${ASTscore.getEnglish()}">
		<p></p>
		<label>數甲:</label>
		
        <input class="form-control" type="text" id="ID" name="mathA" min="0" max="100" value="${ASTscore.getMathA()}">
        <p></p>
        
        <label>數乙:</label>
		
        <input class="form-control" type="text" id="ID" name="mathB" min="0" max="100" value="${ASTscore.getMathB()}">
        <p></p>
       
        <label>歷史</label>
        
        <input class="form-control" type="text" id="email" name="history" min="0" max="100" value="${ASTscore.getHistory()}">
        <p></p>
        

         <label>地理:</label>     
        <input class="form-control" type="text" id="phone" name="geography" min="0" max="100" value="${ASTscore.getGeography()}">
        <p></p>
        
        <p></p>
        

         <label>公民:</label>     
        <input class="form-control" type="text" id="phone" name="civics" min="0" max="100" value="${ASTscore.getCivics()}">
        <p></p>
        
        
        <p></p>
        

         <label>物理:</label>     
        <input class="form-control" type="text" id="phone" name="physics" min="0" max="100" value="${ASTscore.getPhysics()}">
        <p></p>
        
        <p></p>
        

         <label>化學:</label>     
        <input class="form-control" type="text" id="phone" name="chemistry" min="0" max="100" value="${ASTscore.getChemistry()}">
        <p></p>
        
        
        <p></p>
        

         <label>生物:</label>     
        <input class="form-control" type="text" id="phone" name="biology" min="0" max="100" value="${ASTscore.getBiology()}">
        <p></p>
        
        <div class="form-group">
					    <label for="TestRoom.id">考場選擇</label>
				  		<select class="form-control" id="TestRoom.id" name="testroom.id">
				  		<c:forEach items="${TestRoomList}" var="testroom">
					  		<option value="${testroom.id}">
					  			${testroom.name}
				  			</option>
				  		</c:forEach>
						</select>
				  	</div>
        
        
        <p></p>
        <label>繳費狀況:</label>
        <select class="form-control" name="isPayed" >
                  <option value="1">已銷帳</option>
                  <option value="0">未銷帳</option>
                  </select>
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