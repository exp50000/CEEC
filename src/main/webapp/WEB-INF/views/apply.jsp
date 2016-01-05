<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" import="java.util.*, java.sql.*"%>
<%request.setCharacterEncoding("utf-8");%>

    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href=".../.../favicon.ico">

    <title>報考中心</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/apply.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><!--[endif]---->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <!--[endif]---->
  </head>

  <body><!-- Static navbar -->
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
            <li class="active"><a href="">考試報名</a></li>
            <li><a href="center">Home</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${message}，你好</a>
              <ul class="dropdown-menu" role="menu">
                  <li><a href="#">修改個人資料</a></li>
                  <li><a data-toggle="modal" data-target="#myModal">准考證查詢</a></li>
                  <li><a data-toggle="modal" data-target="#myModal2">成績查詢</a></li>
                  <li><a href="logout">登出</a></li>
                  </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
      
      
      <div class="container">
		<div class="row centered mt mb">
      <div class="headerwrap">
  			
      </div>
		<section id="workwrap">
      <h1>大學入學考試報名</h1>
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
  			<div class="cell">
          <h4>學科能力測驗</h4>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;包括國文、英文、數學、社會、自然五考科，各科測驗範圍以高一及高二之必修課程綱要為準，考生五科都必須應考，成績採級分制，可用於繁星推薦入學、個人申請入學及科技校院申請入學等招生管道。</p>
          <a href="applyGSAT" type="button" class="btn btn-lg btn-danger btn-block">報考學測</a>
          <label class="label label-warning">${warning}</label>
        </div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
				<div class="cell">
          <h4>指定科目考試</h4>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以高一到高三之必修及選修課程綱要為準，成績採百分制，用於大學考試入學招生。各校系可依其需求，就考科當中，指定某些考科，以成績選才；考生則依個人興趣及能力，自由選擇應考，即「校系指定，考生選考」的雙向選擇。</p>
          <a href="applyAST" type="button" class="btn btn-lg btn-danger btn-block">報考指考</a>
          <label class="label label-warning">${warning3}</label>
			  </div>
      </div>
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
        <div class="cell">
  				<h4>英語聽力測驗</h4>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;配合普通高級中學課程綱要之內涵，針對高中學生英語聽力進行的一項綜合評量。同時，除著重英語於日常生活中之應用與溝通外，也強調課堂學習相關之英語能力，以期能將所學與世界接軌。</p><br/>
          <a href="applyEL" type="button" class="btn btn-lg btn-danger btn-block">報考英聽</a>
          <label class="label label-warning">${warning2}</label>
        </div>
			</section>
      </div>
      
			
		</div><!-- --/row ---->
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
              
              <form class="form-horizontal" role="form" action="#" method="post">
              <div class="modal-container">
                <div class="form-group">
                    <input type="text" class="form-control" id="exampleInputTestNum" placeholder="准考證號碼">
                </div>
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
      <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
              <h4 class="modal-title" id="myModalLabel">准考證查詢</h4>
            </div>
            <div class="modal-body">
              
              <form class="form-horizontal" role="form" action="testnumberquery" method="post">
              <div class="modal-container">  
                <div class="form-group">
                    <input type="text" class="form-control" id="exampleInputPwd" name="ID" placeholder="身分證字號">
                </div>
                <div class="form-group">
                    <input type="date" class="form-control" id="exampleInputBirth" name="birth" placeholder="出生年月日">
                </div>
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
      
      
	<!-- --/container ----><!-- --/social ---->
  <div id="footerwrap">
		<div class="container">
			<div class="row centered">
				<div class="col-lg-2">
					<p><b>&copy; 大學入學考試中心</b></p>
				</div>
				<div class="col-lg-10">
          <p>總機:(02)2366-1416&nbsp;&nbsp;語音查詢:(02)2364-3677 &nbsp;&nbsp;傳真:(02)2362-0755&nbsp;&nbsp;地址:10673 台北市舟山路237號</p>
				</div>
			</div>
		</div>
	</div><!-- --/footerwrap ----><!-- Bootstrap core JavaScript
    ================================================== --><!-- Placed at the end of the document so the pages load faster --><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><script src="js/bootstrap.min.js"></script>
      
  </body>
  </html>