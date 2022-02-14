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
            <a class="active" href="/main">
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
            <a href="/hairfileUploadForm">
              <i class="fa fa-comments-o"></i>
              <span>커뮤니티게시판</span>
              </a>
          </li>
          <li class="mt">
            <a href="/hairfileUploadForm">
              <i class="fa fa-thumbs-up"></i>
              <span>추천제품</span>
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
      <section class="wrapper site-min-height">
        <div class="row mt mb">
          <div class="col-lg-12">
            <h3><i class="fa fa-angle-right"></i> 두피 케어 솔루션</h3>
            <br>
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="dmbox">
                <div class="service-icon">
                  <a class="" href="faq.html#"><i class="dm-icon fa fa-frown-o fa-3x"></i></a>
                </div>
                <h4>탈모</h4>
                <p>식습관 및 생활 습관의 개선이 필요하며 미녹시딜, 피나스테라이드 등의 약물의 도움을 받을 수 있습니다.</p>
              </div>
            </div>
            <!-- end dmbox -->
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="dmbox">
                <div class="service-icon">
                  <a class="" href="faq.html#"><i class="dm-icon fa fa-fire fa-3x"></i></a>
                </div>
                <h4>홍반</h4>
                <p>두피의 유수분 밸런스를 바로잡고 무너진 면역체계의 회복이 우선적으로 필요합니다.</p>
              </div>
            </div>
            <!-- end dmbox -->
            <div class="col-lg-4 col-md-4 col-sm-12">
              <div class="dmbox">
                <div class="service-icon">
                  <a class="" href="faq.html#"><i class="dm-icon fa fa-asterisk fa-3x"></i></a>
                </div>
                <h4>비듬</h4>
                <p>바른 샴푸 습관을 통해 두피에 쌓인 각질과 피지 등을 제거하고 충분한 수분 공급을 해주어야 합니다.</p>
              </div>
            </div>
            <!-- end dmbox -->
          </div>
          <!--  /col-lg-12 -->
        </div>
        <!-- /row -->
        <div class="row content-panel">
          <h2 class="centered">두피 건강 상식 FAQ</h2>
          <div class="col-md-10 col-md-offset-1 mt mb">
          	 <div class="accordion" id="accordion2">
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseOne">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>탈모는 유전 아닌가요?
                    </a>
                </div>
                <div id="collapseOne" class="accordion-body collapse in">
                  <div class="accordion-inner">
                    <p>현대에는 유전뿐 아니라 스트레스나 과도한 다이어트, 잘못된 식습관 및 생활습관 등 다양한 이유가 존재합니다. 따라서 규칙적인 생활과 균형 잡힌 식단을 통해 두피 건강을 관리해주어야 합니다.</p>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseTwo">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>두피 건강에 좋은 음식은 무엇인가요?
                    </a>
                </div>
                <div id="collapseTwo" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <p>발모 사이클을 유지하는 데 필요한 영양소는 대표적으로 단백질, 비타민, 미네랄이 있습니다. 따라서 이 영양소들이 풍부히 함유된 녹황색 채소, 과일, 고단백의 해조류, 콩 등을 섭취하시는 것이 좋습니다. 예를 들어 물, 녹차, 현미, 검은콩, 검은깨, 호두, 잣, 계란 노른자, 마늘, 다시마 등이 있습니다.</p>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseThree">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>두피 건강을 위헤 피해야 할 음식은 무엇인가요?
                    </a>
                </div>
                <div id="collapseThree" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <p>고열량의 기름진 음식, 인스턴트 음식, 동물성 음식, 당분이 높은 음식, 맵고 짠 음식, 술, 커피, 담배, 3백 식품(흰 쌀, 흰 설탕, 흰 밀가루) 등이 있습니다. 거의 모든 맛있는 음식입니다. 완전히 포기하면 정신 건강 악화가 우려되니 최대한 균형잡힌 식단을 유지하도록 노력해야 합니다.</p>
                  </div>
                </div>
              </div>           
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseFour">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>올바른 샴푸 방법은 무엇인가요?
                    </a>
                </div>
                <div id="collapseFour" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <p>1. 머리는 아침이 아닌 외출하고 와서 바로 감는 것이 좋습니다. 아침에 감으면 머리에 좋은 유분이 씻겨 나가 두피가 자외선에 상하기 쉬운 상태가 됩니다.<br>
					   2. 샴푸를 짠 후 손으로 충분히 거품을 낸 뒤 머리카락 전체에 골고루 도포합니다. 손톱으로 박박 감는 것이 아니라 지문으로 부드럽게 마사지하듯 감습니다. 물 온도는 뜨거운 것보다 미지근한 정도가 좋습니다.<br>
					   3. 헤어드라이기를 사용할 때는 머리에서 멀리 떨어트리거나 찬바람으로 말립니다.
                    </p>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseFive">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>과도한 다이어트로 탈모가 생길 수 있나요?
                    </a>
                </div>
                <div id="collapseFive" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <p>무리한 다이어트로 신체에 영양소가 부족해지면 탈모가 생기거나 심해집니다. 신체는 영양소가 부족하면 심장·폐·간 등 중요 장기에 먼저 영양소를 보냅니다. 이때 상대적으로 모근, 손톱 등에는 그만큼 영양소가 덜 가게 됩니다. 이렇게 되면 모근이 머리카락을 단단히 고정시키는 기능이 약해져 가늘어지고, 빠지기 쉽습니다.</p>
                  </div>
                </div>
              </div>
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="faq.html#collapseSix">
                    <em class="glyphicon glyphicon-chevron-right icon-fixed-width"></em>음주와 흡연이 두피 건강에 영향을 미치나요?
                    </a>
                </div>
                <div id="collapseSix" class="accordion-body collapse">
                  <div class="accordion-inner">
                    <p>술을 마시면 두피의 온도가 올라갑니다. 술과 함께 먹는 튀긴 음식 등의 안주 또한 두피 건강에 좋지 않습니다. 또한 담배의 니코틴과 타르 성분은 혈관을 수축시키고, 혈액의 흐름을 막아 탈모를 악화시킵니다.</p>
                  </div>
                </div>
              </div>
            </div>
            <!-- end accordion -->
          </div>
          <!-- col-md-10 -->
        </div>
        <!--  /row -->
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
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="index.html#" class="go-top">
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

</body>

</html>
