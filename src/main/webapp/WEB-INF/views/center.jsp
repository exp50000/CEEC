<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href=".../.../favicon.ico">

    <title>大考中心首頁</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/center.css" rel="stylesheet">
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
            <li class="active"><a href="#">Home</a></li>
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
      <div id="headerwrap">
        <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
          <h4 class="chin-h4">報名各項考試、簡章下載檢閱、說明規範等</h4>
          <h1>大考報名</h1>
          <a class="btn btn-lg btn-primary" role="button" href="apply">點此進入報考</a>
        </div>
        </div><!-- --/row ---->
      </div><!-- --/headerwrap ---->

      <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <div class="container">
            <div class="carousel-caption2">
              <table class="table table-condensed">
                    <tr>
                      <td class="active">集體報名前置作業系統</td>
                      <td class="success">104.10.06 - 104.11.12</td>
                      <td class="warning">限集體報名單位使用《學測、英聽、術科均使用同一前置作業系統》</td>
                    </tr>
                    <tr>
                      <td class="active">個別報名</td>
                      <td class="success">104.10.29 - 104.11.12</td>
                      <td class="warning">限非應屆畢業生使用</td>
                    </tr>
                    <tr>
                      <td class="active">身心障礙考生應考服務網</td>
                      <td class="success">104.10.29 - 104.11.12</td>
                      <td class="warning">...</td>
                    </tr>
                    <tr>
                      <td class="active">報名處理進度查詢</td>
                      <td class="success">104.10.29 - 104.11.12 </td>
                      <td class="warning">...</td>
                    </tr>
                    <tr>
                      <td class="active">報名資料確認查詢</td>
                      <td class="success"> 104.12.09 - 104.12.11</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">個別報名考生准考證資料更正</td>
                      <td class="success">104.12.24 - 104.12.29</td>
                      <td class="warning">限非應屆畢業生使用</td>
                    </tr>
                     <tr>
                      <td class="active">准考證郵寄掛號號碼查詢</td>
                      <td class="success">104.12.24 - 105.01.23</td>
                      <td class="warning"></td>
                    </tr>
                     <tr>
                      <td class="active">准考證號碼查詢</td>
                      <td class="success"> 104.12.24 - 105.08.31</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">試場查詢</td>
                      <td class="success">105.01.08 - 105.01.23</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">突發傷病考生應考服務網</td>
                      <td class="success">105.01.08 - 105.01.19 </td>
                      <td class="warning"></td>
                    </tr>
                     <tr>
                      <td class="active">成績查詢</td>
                      <td class="success">105.02.18 - 105.08.31</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">成績複查申請</td>
                      <td class="success">105.02.19 - 105.02.23</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">成績複查結果查詢</td>
                      <td class="success">105.02.26 - 105.03.25</td>
                      <td class="warning"></td>
                    </tr>
                </table>
              <h1>105學年度學科能力測驗</h1>
              <h4>各項系統開放時間</h4>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="container">
            <div class="carousel-caption2">
              <p>
                <table class="table table-condensed">
                    <tr>
                      <td class="active">集體報名前置作業系統</td>
                      <td class="success">104.10.06 - 104.11.12</td>
                      <td class="warning">限集體報名單位使用《學測、英聽、術科均使用同一前置作業系統》</td>
                    </tr>
                    <tr>
                      <td class="active">個別報名</td>
                      <td class="success">104.10.29 - 104.11.12</td>
                      <td class="warning">限非應屆畢業生使用</td>
                    </tr>
                    <tr>
                      <td class="active">身心障礙考生應考服務網</td>
                      <td class="success">104.10.29 - 104.11.12</td>
                      <td class="warning">...</td>
                    </tr>
                    <tr>
                      <td class="active">報名處理進度查詢</td>
                      <td class="success">104.10.29 - 104.11.12 </td>
                      <td class="warning">...</td>
                    </tr>
                    <tr>
                      <td class="active">報名資料確認查詢</td>
                      <td class="success"> 104.12.09 - 104.12.11</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">個別報名考生准考證資料更正</td>
                      <td class="success">104.12.24 - 104.12.29</td>
                      <td class="warning">限非應屆畢業生使用</td>
                    </tr>
                     <tr>
                      <td class="active">准考證郵寄掛號號碼查詢</td>
                      <td class="success">104.12.24 - 105.01.23</td>
                      <td class="warning"></td>
                    </tr>
                     <tr>
                      <td class="active">准考證號碼查詢</td>
                      <td class="success"> 104.12.24 - 105.08.31</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">試場查詢</td>
                      <td class="success">105.01.08 - 105.01.23</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">突發傷病考生應考服務網</td>
                      <td class="success">105.01.08 - 105.01.19 </td>
                      <td class="warning"></td>
                    </tr>
                     <tr>
                      <td class="active">成績查詢</td>
                      <td class="success">105.02.18 - 105.08.31</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">成績複查申請</td>
                      <td class="success">105.02.19 - 105.02.23</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">成績複查結果查詢</td>
                      <td class="success">105.02.26 - 105.03.25</td>
                      <td class="warning"></td>
                    </tr>
                </table>
              <p>
                <h1>105學年度指定科目考試</h1>
                <h4>各項系統開放時間</h4>
            </div>
          </div>
        </div>
        <div class="item">
          <div class="container">
            <div class="carousel-caption2">
              <table class="table table-condensed">
                    <tr>
                      <td class="active">集體報名前置作業系統</td>
                      <td class="success">104.10.06 - 104.11.12</td>
                      <td class="warning">限集體報名單位使用《學測、英聽、術科均使用同一前置作業系統》</td>
                    </tr>
                    <tr>
                      <td class="active">個別報名</td>
                      <td class="success">104.10.29 - 104.11.12</td>
                      <td class="warning">限非應屆畢業生使用</td>
                    </tr>
                    <tr>
                      <td class="active">身心障礙考生應考服務網</td>
                      <td class="success">104.10.29 - 104.11.12</td>
                      <td class="warning">...</td>
                    </tr>
                    <tr>
                      <td class="active">報名處理進度查詢</td>
                      <td class="success">104.10.29 - 104.11.12 </td>
                      <td class="warning">...</td>
                    </tr>
                    <tr>
                      <td class="active">報名資料確認查詢</td>
                      <td class="success"> 104.12.09 - 104.12.11</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">個別報名考生准考證資料更正</td>
                      <td class="success">104.12.24 - 104.12.29</td>
                      <td class="warning">限非應屆畢業生使用</td>
                    </tr>
                     <tr>
                      <td class="active">准考證郵寄掛號號碼查詢</td>
                      <td class="success">104.12.24 - 105.01.23</td>
                      <td class="warning"></td>
                    </tr>
                     <tr>
                      <td class="active">准考證號碼查詢</td>
                      <td class="success"> 104.12.24 - 105.08.31</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">試場查詢</td>
                      <td class="success">105.01.08 - 105.01.23</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">突發傷病考生應考服務網</td>
                      <td class="success">105.01.08 - 105.01.19 </td>
                      <td class="warning"></td>
                    </tr>
                     <tr>
                      <td class="active">成績查詢</td>
                      <td class="success">105.02.18 - 105.08.31</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">成績複查申請</td>
                      <td class="success">105.02.19 - 105.02.23</td>
                      <td class="warning"></td>
                    </tr>
                    <tr>
                      <td class="active">成績複查結果查詢</td>
                      <td class="success">105.02.26 - 105.03.25</td>
                      <td class="warning"></td>
                    </tr>
                </table>
                <h1>高中英語聽力測驗</h1>
                <h4>各項系統開放時間</h4>
            </div>
          </div>
        </div>
      </div>
      
    </div><!-- /.carousel -->

      <section id="works"></section>
      <div class="container">
		<div class="row centered mt mb">
			<h1>各項查詢</h1>
			
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
				<a data-toggle="modal" data-target="#myModal3"><img src="pic/search4.png" class="img-responsive"></a>
			</div>
			
			
      
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
				<a data-toggle="modal" data-target="#myModal"><img src="pic/search5.png" class="img-responsive"></a>
			</div>
			
			
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
                <div class="form-group input-group">
                	<span class="input-group-addon">生日</span>
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
			<div class="col-lg-4 col-md-4 col-sm-4 gallery">
				<a data-toggle="modal" data-target="#myModal2"><img src="pic/search6.png" class="img-responsive"></a>
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
                <div class="form-group input-group">
                	<span class="input-group-addon">生日</span>
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
      <!--modal end -->
      
      <!-- Modal -->
      <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
              <h4 class="modal-title" id="myModalLabel">進度查詢</h4>
            </div>
            <div class="modal-body">
              
              <form class="form-horizontal" role="form" action="progressquery" method="post">
              <div class="modal-container">
                <div class="form-group">
                    <input type="text" class="form-control" id="exampleInputPwd" name="ID" placeholder="身分證字號">
                </div>
                <div class="form-group input-group">
                	<span class="input-group-addon">生日</span>
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
      <!--modal end -->
     
						
		</div><!-- --/row ---->	
	</div><!-- --/container ---->
	
	
	
	
	
	
	<!-- --/social ---->
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
	</div><!-- --/footerwrap ----><!-- Bootstrap core JavaScript
    ================================================== --><!-- Placed at the end of the document so the pages load faster --><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><script src="js/bootstrap.min.js"></script>
      
  </body>
  
  
  
  </html>