<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
  <meta charset="utf-8">
  <title>指考報名</title>
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
  <link rel="stylesheet" href="css/apf_gsat.css">
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
            <li class="active"><a href="">指考報名</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${message}，你好</a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="modify">修改個人資料</a></li>
                  <li><a data-toggle="modal" data-target="#myModal">准考證查詢</a></li>
                  <li><a data-toggle="modal" data-target="#myModal2">成績查詢</a></li>
                  <li><a href="logout">登出</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

<div class="container-entire">
  <div class="row cell-title">
    <h1>指定科目考試</h1>
          <label class="col-sm-2 control-label">科目</label>
          <p class="col-sm-10">國文 英文 數甲 數乙 歷史 地理 公民 物理 化學 生物</p>
          <label class="col-sm-2 control-label">測驗日期</label>
          <p class="col-sm-10">民國106年2月10日</p>
  </div>
  <img src="pic/process2.png" class="img-responsive" alt="Responsive image">

<!-- about and skills section -->

  <div class="row container-data">
    <div class="col-md-12 col-sm-12">
        <div class="icon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></div>
        <div class="test-data">
          <div class="row test-data-content">
            <h2 class="shadow">報名資料填寫確認</h2>
            <hr>
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <label class="col-sm-4 control-label">姓名</label>
                <div class="col-sm-8">
                  <p class="form-control-static">${name}</p>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">身分證字號</label>
                <div class="col-sm-8">
                  <p class="form-control-static">${ID}</p>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">性別</label>
                <div class="col-sm-8">
                  <p class="form-control-static">${gender}</p>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">生日</label>
                <div class="col-sm-8">
                  <p class="form-control-static">${birth}</p>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">連絡電話</label>
                <div class="col-sm-8">
                  <p class="form-control-static">${phone}</p>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">通訊地址</label>
                <div class="col-sm-8">
                  <p class="form-control-static">${address}</p>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">緊急連絡人姓名</label>
                <div class="col-sm-8">
                  <p class="form-control-static">${emercontact}</p>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">緊急連絡人關係</label>
                <div class="col-sm-8">
                  <p class="form-control-static">${emerrelation}</p>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">緊急連絡人電話</label>
                <div class="col-sm-8">
                  <p class="form-control-static">${emermobile}</p>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">是否為低收入戶</label>
                <div class="col-sm-8">
                  <p class="form-control-static">${lowincome}</p>
                </div>
              </div>
              </form>
              <div class="form-group">
                <label class="col-sm-4 control-label">   考科選擇</label>
                <div class="col-sm-8">
                  <form:form method="POST" commandName="examinee" action="confirmapplyAST">
					  	  <form:checkboxes path="subject" items="${subject}" />
					  			

                </div>
              </div>
              
              <hr>
              <center>
             
             <a class="btn  btn-danger " href="modify">修改資料</a>
			<a class="btn  btn-info " href="apply">回到報考頁面</a>
			<button name="submit" class="btn  btn-success " href="confirmapplyAST">確認報考</button>
            </center>
            </form:form>
            
          </div>
        </div>
    </div>
  </div>

</div>

 <!-- Modal -->
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
      <!--modal end -->
      
      
      
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