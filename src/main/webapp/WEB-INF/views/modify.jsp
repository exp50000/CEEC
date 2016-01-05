<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" import="java.util.*, java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>


<html>
<head>
  <meta charset="utf-8">
  <title>更改個人資料</title>
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
  <link rel="stylesheet" href="css/register.css">
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
            <li class="active"><a href="">修改資料</a></li>
            <li><a href="center">回上一頁</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

<div class="container-entire">
  <div class="row container-data">
    <div class="col-md-12 col-sm-12">
      <div class="icon-remind"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span></div>
      <div class="test-remind">
          <div class="row test-data-content">
            <h1 class="bold">修改個人資料</h1>
            <h5>請仔細填寫資料</h5>
          </div>
      </div>
    </div>
  </div>


<!-- about and skills section -->

  <div class="row container-data">
    <div class="col-md-12 col-sm-12">
        <div class="icon-user"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></div>
        <div class="test-data">
          <div class="row test-data-content">
            <h2 class="shadow">更改基本資料</h2>
            <hr>
            <form class="form-horizontal" role="form" action="modifyData" method="post">
             
              <hr>
              <div class="form-group">
                <label class="col-sm-4 control-label">姓名</label>
                <div class="col-sm-8">
                  <input class="form-control" type="text" name="name" value= "${name}">
                </div>
              </div>
              
             
              <div class="form-group">
                <label class="col-sm-4 control-label">生日</label>
                <div class="col-sm-8">
                  <input type="date" class="form-control" name="birth" value="${birth}">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">連絡電話</label>
                <div class="col-sm-8">
                  <input type="tel" class="form-control" maxlength="10" name="phone" value="${phone}">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">通訊地址</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="address" value="${address}">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">緊急連絡人姓名</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" value="${emercontact}" name="EmergencyContact">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">緊急連絡人關係</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" value="${emerrela}" name="EmergencyContactRelationship">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">緊急連絡人電話</label>
                <div class="col-sm-8">
                  <input type="tel" class="form-control" value="${emermobile}" maxlength="10" name="EmergencyContactMobile">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">是否為低收入戶</label>
                <div class="col-sm-8">
                  <select class="form-control" name="lowincome" >
                  <option value="0">是</option>
                  <option value="1">否</option>
                  </select>
                  
                </div>
              </div>
              <hr>
              <center>
              <a href="center" class="btn-lg btn btn-info" role="button">回上一頁</a>
              <button type="submit" class="btn-lg btn-success btn-control">送出</button>
            </center>
            </form>
          </div>
        </div>
    </div>
  </div>

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

<script language="JavaScript">

// <--  function check(num)
//   {
//     if(isNaN(num))
//     {
//       alert("數量只可填入數字!!");
//       document.form1.test.value = 1;
//       num = 1;
//     }
//     if(num.length == 0)
//     {
//       alert("數量不得空白!!");
//       document.form1.test.value = 1;
//     }
//   }

</script>


</body>
</html>