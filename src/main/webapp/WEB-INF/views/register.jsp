<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" import="java.util.*, java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>


<html>
<head>
  <meta charset="utf-8">
  <title>註冊帳號</title>
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
            <li class="active"><a href="">註冊</a></li>
            <li><a href="signin">登入</a></li>
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
            <h1 class="bold">註冊須知</h1>
            <h5><a href="http://www.ceec.edu.tw/CeecPersonDataProtect/%E6%95%B4%E5%90%88%E7%89%88-%E6%B8%AC%E9%A9%97%E6%9C%8D%E5%8B%99%E5%80%8B%E4%BA%BA%E8%B3%87%E6%96%99%E8%92%90%E9%9B%86%281030213%29.pdf" target="blank">測驗服務之個人資料蒐集、處理及利用告知事項</a></h5>
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
            <h2 class="shadow">基本資料填寫</h2>
            <label class="label label-warning">${warning}</label>
            <hr>
            <form class="form-horizontal" role="form" action="register" method="post">
              <div class="form-group">
                <label class="col-sm-4 control-label">E-Mail</label>
                <label class="label label-warning">${message2}</label>
                <div class="col-sm-8">
                  <input type="email" class="form-control" name="email">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">密碼</label>
                <div class="col-sm-8">
                  <input type="password" class="form-control" name="password">
                </div>
              </div>
              <hr>
              <div class="form-group">
                <label class="col-sm-4 control-label">姓名</label>
                <div class="col-sm-8">
                  <input class="form-control" type="text" name="name">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">身分證字號</label>
                <label class="label label-warning">${message}</label>
                <div class="col-sm-8">
                  <input class="form-control" type="text" maxlength="10" name="ID">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">性別</label>
                <div class="col-sm-8">
                  <select class="form-control" name="gender" >
                  <option value="男">男</option>
                  <option value="女">女</option>
                  </select>
                  
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">生日</label>
                <div class="col-sm-8">
                  <input type="date" class="form-control" name="birth">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">連絡電話</label>
                <div class="col-sm-8">
                  <input type="tel" class="form-control" maxlength="10" name="phone">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">通訊地址</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="address">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">緊急連絡人姓名</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="EmergencyContact">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">緊急連絡人關係</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" name="EmergencyContactRelationship">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">緊急連絡人電話</label>
                <div class="col-sm-8">
                  <input type="tel" class="form-control" maxlength="10" name="EmergencyContactMobile">
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-4 control-label">是否為低收入戶</label>
                <div class="col-sm-8">
                  <select class="form-control" name="lowincome" >
                  <option value="1">是</option>
                  <option value="0">否</option>
                  </select>
                  
                </div>
              </div>
              <hr>
              <center>
              <a href="signin" class="btn-lg btn btn-info" role="button">回上一頁</a>
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