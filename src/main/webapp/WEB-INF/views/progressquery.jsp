<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" import="java.util.*, java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>



<html>
<head>
	<meta charset="utf-8">
	<title>進度查詢</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">

<!-- 
Easy Profile Template
http://www.templatemo.com/tm-467-easy-profile
-->
	<!-- stylesheet css -->
	<link rel="stylesheet" href="css/bootstrap.css">
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
				<h1 class="white bold font-change shadow">年度大考</h1>
				<h1 class="tm-title bold font-change">報名進度查詢</h1>
				<hr>
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
				<h4 class="test-data-title">報名單號：${GSATid}</h4>
				<hr>
				<table class="table table-bordered table-border" rules="none">
					<tr class="bold">
						<td>報名填單與否</td>
						<td>准考證是否分配</td>
						<td>繳款與否</td>
						<td>繳費明細</td>
					</tr>
					<tr>
						<td>${GSATwarning}</td>
						<td>${GSATtestnumber}</td>
						<td>${GSATpayed}</td>
						<td>
							<a role="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">查看</a>
							
							
							
							
		
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">學測費用</h4>
      </div>
      <div class="modal-body">
         <p>${income}</p>
         <p>應付費用： ${GSATshouldpay}</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
        
      </div>
    </div>
  </div>
</div>
<!-- Modal -->			
							
							
							
							
							
							
							
							
							
							
							<a role="button" class="btn btn-default" href="#">列印</a>
						</td>
					</tr>
					
				</table>
				<hr>
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
				<h4 class="test-data-title">報名單號：${ASTid}</h4>
				<hr>
				<table class="table table-bordered table-border" rules="none">
					<tr class="bold">
						<td>報名填單與否</td>
						<td>准考證是否分配</td>
						<td>已報考科目</td>
						<td>繳款與否</td>
						<td>繳費明細</td>
					</tr>
					<tr>
						<td>${ASTwarning}</td>
						<td>${ASTtestnumber}</td>
						<td>${subject}</td>
						<td>${ASTpayed}</td>
						<td>
							<a role="button" class="btn btn-default" data-toggle="modal" data-target="#myModal2">查看</a>
							
							
							
							
		
<!-- Modal -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">指考費用</h4>
      </div>
      <div class="modal-body">
<p>${income}</p>
         <p>應付費用： ${ASTshouldpay}</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">關閉</button>
        
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
							<a role="button" class="btn btn-default" href="#">列印</a>
						</td>
					</tr>
					
				</table>
				<hr>
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
				<h4 class="test-data-title">報名單號：${ELid}</h4>
				<hr>
				<table class="table table-bordered table-border" rules="none">
					<tr class="bold">
						<td>報名填單與否</td>
						<td>准考證是否分配</td>
						<td>繳款與否</td>
						<td>繳費明細</td>
					</tr>
					<tr>
						<td>${ELwarning}</td>
						<td>${ELtestnumber}</td>
						<td>${ELpayed}</td>
						<td>
							<a role="button" class="btn btn-default" data-toggle="modal" data-target="#myModal3">查看</a>
							
							
							
							
		
<!-- Modal -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">英聽費用</h4>
      </div>
      <div class="modal-body">
        <p>${income}</p>
         <p>應付費用： ${ELshouldpay}</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
							<a role="button" class="btn btn-default" href="#">列印</a>
						</td>
					</tr>
					
				</table>
				<hr>
			</div>
		</div>
	</div>
</section>
</div>

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