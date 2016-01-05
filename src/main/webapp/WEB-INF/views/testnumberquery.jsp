<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
	<meta charset="utf-8">
	<title>准考證查詢</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">

<!-- 
Easy Profile Template
http://www.templatemo.com/tm-467-easy-profile
-->
	<!-- stylesheet css -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/testSearch.css">
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
          <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><span><img src="pic/ceecLogo2.png"></span>&nbsp;大學入學考試中心</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="center">Home</a></li>
            <li><a href="modify">修改個人資料</a></li>
                  
                  <li><a data-toggle="modal" data-target="#myModal2">成績查詢</a></li>
                  <li><a href="logout">登出</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>


<!-- preloader section -->
<div class="preloader">
	<div class="sk-spinner sk-spinner-wordpress">
       <span class="sk-inner-circle"></span>
     </div>
</div>

<!-- header section -->
<header>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				
				<hr>
				<h1 class="white bold font-change shadow">年度大考</h1>
				<h1 class="tm-title bold font-change">准考證查詢</h1>
				<label class="label label-warning">${warning}</label>
			</div>
		</div>
	</div>
</header>
<div class="container-entire">

<!-- about and skills section -->
<section class="container">
	<div class="row">
		<div class="col-md-4 col-sm-12">
			<div class="test-topic">
				<h3 class="accent">105學年度</h3>
				<h1>學科能力測驗</h1>
			</div>
		</div>
		<div class="col-md-8 col-sm-12">
			<div class="test-data">
				<h4 class="test-data-title">准考證號碼：${GSATtestnumber}${GSATwarning}</h4>
				<hr>
				<table class="table table-bordered table-border" rules="none">
					<tr>
						<td>姓名：${name}</td>
						<td>考場：${GSATname}</td>
					</tr>
					<tr>
						<td>身分證字號：${id}</td>
						<td>測驗日期：106 / 2 /10</td>
					</tr>
					<tr>
						<td>緊急連絡人電話：${emermobile}</td>
						<td></td>
					</tr>
					
				</table>
				<hr>
				<p><a class="push" href="#">查尋郵寄掛號</a></p>
			</div>
		</div>
	</div>
</section>

<!-- test-topic and languages -->
<section class="container">
	<div class="row">
		<div class="col-md-4 col-sm-12">
			<div class="test-topic">
				<h3 class="accent">105學年度</h3>
				<h1>指定科目考試</h1>					
			</div>
		</div>
		<div class="col-md-8 col-sm-12">
			<div class="test-data">
				<h4 class="test-data-title">准考證號碼：${ASTtestnumber}${ASTwarning}</h4>
				<hr>
				<table class="table table-bordered table-border" rules="none">
					<tr>
						<td>姓名：${name}</td>
						<td>考場：${ASTname}</td>
					</tr>
					<tr>
						<td>身分證字號：${id}</td>
						<td>測驗日期：106 / 2 /10</td>
					</tr>
					<tr>
						<td>緊急連絡人電話：${emermobile}</td>
						<td>已報考科目： ${subject}</td>
					</tr>
					
				</table>
				<hr>
				<p><a class="push" href="#">查尋郵寄掛號</a></p>
			</div>
		</div>
	</div>
</section>

<!-- contact and test-data -->
<section class="container">
	<div class="row">
		<div class="col-md-4 col-sm-12">
			<div class="test-topic">
				<h3 class="accent">105學年度</h3>
				<h1>高中英文聽力測驗</h1>
			</div>
		</div>
		<div class="col-md-8 col-sm-12">
			<div class="test-data">
				<h4 class="test-data-title">准考證號碼：${ELtestnumber}${ELwarning}</h4>
				<hr>
				<table class="table table-bordered table-border" rules="none">
					<tr>
						<td>姓名：${name}</td>
						<td>考場：${ELname}</td>
					</tr>
					<tr>
						<td>身分證字號：${id}</td>
						<td>測驗日期：106 / 2 /10</td>
					</tr>
					<tr>
						<td>緊急連絡人電話：${emermobile}</td>
						<td></td>
					</tr>
					
				</table>
				<hr>
				<p><a class="push" href="#">查尋郵寄掛號</a></p>
			</div>
		</div>
	</div>
</section>
</div>



<!--  modals -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
              <h4 class="modal-title" id="myModalLabel">成績查詢</h4>
            </div>
            <div class="modal-body">
              
              <form class="form-horizontal" role="form" action="scorequery" method="post">
              <div class="modal-container">
                <div class="form-group">
                    <input type="text" class="form-control" id="exampleInputPwd" name="ID" placeholder="身分證字號">
                </div>
                <div class="form-group">
                    <input type="date" class="form-control" id="exampleInputBirth" name="birth" placeholder="出生年月日">
                </div>
                <div class="form-group">       
                  <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                  <button type="submit" class="btn btn-primary">確認</button>
                </div>            
              </form>
            </div>
          </div>
        </div> 
      </div>
<!-- modals -->
<!-- footer section -->
<div id="footerwrap">
    <div class="container">
      <div class="row centered">
        <div class="col-lg-4">
          <p><b>版權所有 大學入學考試中心</b></p>
        </div>
      
        <div class="col-lg-4">
          <p>http://www.ceec.edu.tw/</p>
        </div>
        <div class="col-lg-4">
          <p>總機：(02)2366-1416</p>
          <p>語音查詢：(02)2364-3677</p>
          <p>傳真：(02)2362-0755</p>
          <p>地址：10673 台北市舟山路237號</p>
        </div>
      </div>
    </div>
  </div><!-- --/footerwrap ---->

<!-- javascript js -->	
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>	
<script src="js/jquery.backstretch.min.js"></script>
<script src="js/custom.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>


</body>
</html>