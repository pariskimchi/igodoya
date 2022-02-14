<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard">
  <title>I GO 頭야</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-fileupload/bootstrap-fileupload.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datepicker/css/datepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-daterangepicker/daterangepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-timepicker/compiled/timepicker.css" />
  <link rel="stylesheet" type="text/css" href="lib/bootstrap-datetimepicker/datertimepicker.css" />
  
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">

</head>

<body>
  <section id="container">
  <%@ include file = "inc/logoMenu.jsp" %>
    <!-- **********************************************************************************************************************************************************
        사이드바 메뉴
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <li class="mt">
            <a href="/main">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
          <li class="mt">
            <a href="/hairfileUploadForm">
              <i class="fa fa-camera"></i>
              <span>두피진단하기</span>
              </a>
          </li>
          <li class="mt">
            <a href="/hairfileUploadForm">
              <i class="fa fa-bar-chart-o"></i>
              <span>두피진단결과</span>
              </a>
          </li>
          <li class="mt">
            <a href="/product">
              <i class="fa fa-thumbs-up"></i>
              <span>추천제품</span>
              </a>
          </li>
          <li class="mt">
            <a class="active" href="/boardList">
              <i class="fa fa-comments-o"></i>
              <span>커뮤니티게시판</span>
              </a>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 게시글 조회</h3>
        <div class="row mt">
          <div class="col-lg-12">
            <div class="form-panel">
              <div class="form">
                <div class="cmxform form-horizontal style-form">
                  <div class="form-group">
                    <label class="control-label col-lg-2"><b>제목</b></label>
                    <div class="col-lg-10">
                      <label class="control-label">${dto.title}</label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-lg-2"><b>작성자</b></label>
                    <div class="col-lg-2">
                      <label class="control-label">${dto.memberId}</label>
                    </div>
                    <label class="control-label col-lg-2"><b>작성일</b></label>
                    <div class="col-lg-2">
                      <label class="control-label">${dto.regDate}</label>
                    </div>
                    <label class="control-label col-lg-2"><b>조회수</b></label>
                    <div class="col-lg-2">
                      <label class="control-label">${dto.views}</label>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-lg-2"><b>내용</b></label>
                    <div class="col-lg-10">
                      <textarea class=" form-control" id="content" name="content" rows="20" style="resize: none;" readonly="readonly">${dto.content}</textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-lg-2">이미지</label>
                    <div class="controls col-md-9">
                      <c:choose>
                        <c:when test="${empty dto.orifileName}">
                          <label class="control-label">등록된 이미지가 없습니다.</label>                                         
                        </c:when>
                        <c:otherwise>
                          <label class="control-label">${dto.orifileName}</label>
                        </c:otherwise>
                      </c:choose>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="control-label col-lg-2"><a href="/boardList" class="btn btn-theme02">목록</a></label>
                    <div class="col-lg-10">
                      <c:if test="${dto.memberId eq memberId}">
                        <span class="pull-right">
		                  <a href="/boardModifyForm?idx=${dto.idx}" class="btn btn-theme03">게시글 수정</a>
		                  <button class="btn btn-theme04" onclick="deleteCheck(${dto.idx})">게시글 삭제</button>
		                </span>
		              </c:if>
		            </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>I GO 頭야</strong>. All Rights Reserved
        </p>
        <div class="credits">
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="form_validation.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="lib/form-validation-script.js"></script>
  <script type="text/javascript" src="lib/bootstrap-fileupload/bootstrap-fileupload.js"></script>
  <script>
	function deleteCheck(idx) {
		if(confirm("해당 글을 삭제 하시겠습니까")){
			location.href="/boardDelete?idx=" + idx;
		}
	}
  </script>

</body>

</html>
