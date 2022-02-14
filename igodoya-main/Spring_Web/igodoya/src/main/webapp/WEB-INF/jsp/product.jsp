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
  <link href="lib/fancybox/jquery.fancybox.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/jquery/jquery.min.js"></script>

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
            <a class="active" href="/hairfileUploadForm">
              <i class="fa fa-thumbs-up"></i>
              <span>추천제품</span>
              </a>
          </li>
          <li class="mt">
            <a href="/boardList">
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
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> 추천제품</h3>
        <hr>
        <div class="row mt">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
            <div class="product-panel-2 pn">
                  <div class="badge badge-hot">HOT</div>
                  <img src="img/portfolio/sample1.png" width="130" height="130" alt="">
                  <h5 class="mt">닥터방기원 헤어토닉</h5>
                  <h6>TOTAL SALES: ₩25,900</h6>
                  <button class="btn btn-small btn-theme04" onclick="window.open('https://shopping.naver.com/beauty/stores/100206339/products/3336496363?NaPm=ct%3Dkwbuwomo%7Cci%3D232702fb2425c2a2e08e0cea5f120418efcd6dcd%7Ctr%3Dslsl%7Csn%3D369516%7Chk%3Dbb02f5f3a75612aa6302285968a37e3bb37663ba')">구매하기</button>
                </div>
          </div>
          <!-- col-lg-4 -->
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
            <div class="product-panel-2 pn">
                  <div class="badge badge-hot">HOT</div>
                  <img src="img/portfolio/sample7.png" width="120" height="130" alt="">
                  <h5 class="mt">닥터 포 헤어 샴푸</h5>
                  <h6>TOTAL SALES: ₩20,000</h6>
                  <button class="btn btn-small btn-theme04" onclick="window.open('https://search.shopping.naver.com/catalog/7924237636?query=%ED%83%88%EB%AA%A8%EC%83%B4%ED%91%B8&NaPm=ct%3Dkwbu6taw%7Cci%3D65a1f7bf378b47eba5f17e3b7da063135665d07b%7Ctr%3Dslsl%7Csn%3D95694%7Chk%3D055a62a46660326a22c87c15d2e1c9ced0c1b74b')" >구매하기</button>
                </div>
          </div>
          <!-- col-lg-4 -->
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
            <div class="product-panel-2 pn">
                  <div class="badge badge-hot">HOT</div>
                  <img src="img/portfolio/sample8.png" width="170" height="130" alt="">
                  <h5 class="mt">천연비누 어성초비누</h5>
                  <h6>TOTAL SALES: ₩ 7,900</h6>
                  <button class="btn btn-small btn-theme04" onclick="window.open('https://smartstore.naver.com/bizsumer/products/2427513402?NaPm=ct%3Dkwbul2f4%7Cci%3Dbc112637e9f7ba1ca2443c230d5bd94fbf896234%7Ctr%3Dslsl%7Csn%3D464568%7Chk%3Da218a01686dfb845ec49954c3c7aab6814307efd')">구매하기</button>
                </div>
          </div>
          <!-- col-lg-4 -->
        </div>
        <!-- /row -->
        <div class="row mt">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
            <div class="product-panel-2 pn">
                  
                  <img src="img/portfolio/sample2.png" width="100" height="120" alt="">
                  <h5 class="mt">부케가르니 탈모완화 헤어토닉</h5>
                  <h6>TOTAL SALES: ₩ 7,490</h6>
                  <button class="btn btn-small btn-theme04" onclick="window.open('https://search.shopping.naver.com/catalog/25052639532?query=%ED%97%A4%EC%96%B4%ED%86%A0%EB%8B%89&NaPm=ct%3Dkwbv9rb4%7Cci%3D5c41ea18bdec6a4e213c9044e0e1ee0baa17f210%7Ctr%3Dslsl%7Csn%3D95694%7Chk%3D971ad57aed2ee75d144e9c8ac4335e618492a359')">구매하기</button>
                </div>
          </div>
          <!-- col-lg-4 -->
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
            <div class="product-panel-2 pn">
                  <img src="img/portfolio/sample9.png" width="80" height="120" alt="">
                  <h5 class="mt">닥터메디션 지루성두피염 세보레아샴푸</h5>
                  <h6>TOTAL SALES: ₩38,800</h6>
                  <button class="btn btn-small btn-theme04" onclick="window.open('http://drmedicean.co.kr/product/detail.html?product_no=36&cate_no=57&display_group=1&cafe_mkt=naver_ks&mkt_in=Y&ghost_mall_id=naver&ref=naver_open&n_media=11068&n_query=%EC%A7%80%EB%A3%A8%EC%84%B1%EB%91%90%ED%94%BC%EC%97%BC%EC%83%B4%ED%91%B8&n_rank=3&n_ad_group=grp-a001-02-000000018637326&n_ad=nad-a001-02-000000114841260&n_campaign_type=2&n_mall_id=medicean22&n_mall_pid=36&n_ad_group_type=2&NaPm=ct%3Dkwc12o54%7Cci%3D0A400023OTLvGGO4NKXP%7Ctr%3Dpla%7Chk%3D298ad7b0b4e04a95ae112aa7661cc26cfe7af35a')">구매하기</button>
                </div>
          </div>
          <!-- col-lg-4 -->
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
            <div class="product-panel-2 pn">
                  <img src="img/portfolio/sample10.png" width="100" height="135" alt="">
                  <h5 class="mt">맥주효모 탈모 헤어토닉</h5>
                  <h6>TOTAL SALES: ₩ 19,900</h6>
                  <button class="btn btn-small btn-theme04" onclick="window.open('https://search.shopping.naver.com/catalog/29539895618?query=%ED%97%A4%EC%96%B4%ED%86%A0%EB%8B%89&NaPm=ct%3Dkwc19c40%7Cci%3De3a3c7a07161bc493f56439870a87dcd59b0c34c%7Ctr%3Dslsl%7Csn%3D95694%7Chk%3D78c8a0ce306faa5219bf1c4143678f85266c43f0')">구매하기</button>
                </div>
          </div>
          <!-- col-lg-4 -->
        </div>
        <!-- /row -->
        <div class="row mt mb">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
            <div class="product-panel-2 pn">
                  <img src="img/portfolio/sample11.png" width="80" height="130" alt="">
                  <h5 class="mt">에스큐제약 비듬샴푸</h5>
                  <h6>TOTAL SALES: ₩ 32,500</h6>
                  <button class="btn btn-small btn-theme04" onclick="window.open('https://search.shopping.naver.com/catalog/29324804618?query=%EB%B9%84%EB%93%AC%EC%83%B4%ED%91%B8&NaPm=ct%3Dkwc1dux4%7Cci%3D11617b9631b474eebd2d5b1d43a2f04b2ecf6c0c%7Ctr%3Dslsl%7Csn%3D95694%7Chk%3Dcb70fbb7bf0d823a6c02ba40ed98a1ff5f9c030d')">구매하기</button>
                </div>
          </div>
          <!-- col-lg-4 -->
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
            <div class="product-panel-2 pn">
                  <img src="img/portfolio/sample12.png" width="100" height="130" alt="">
                  <h5 class="mt">올솔 검은콩 스케일링 샴푸</h5>
                  <h6>TOTAL SALES: ₩ 12,900</h6>
                  <button class="btn btn-small btn-theme04" onclick="window.open('https://search.shopping.naver.com/catalog/28269721554?query=%EB%B9%84%EB%93%AC%EC%83%B4%ED%91%B8&NaPm=ct%3Dkwc1hto0%7Cci%3Daf231dd6339a211996ccc39b4c7ef0e00446f61d%7Ctr%3Dslsl%7Csn%3D95694%7Chk%3D1e775e15f6bef9cd2fcb0f24a9ed357de8a45a2a')">구매하기</button>
                </div>
          </div>
          <!-- col-lg-4 -->
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
            <div class="product-panel-2 pn">
                  <img src="img/portfolio/sample13.png" width="100" height="130" alt="">
                  <h5 class="mt">헤드앤숄더 비듬샴푸</h5>
                  <h6>TOTAL SALES: ₩ 5,470</h6>
                  <button class="btn btn-small btn-theme04" onclick="window.open('https://search.shopping.naver.com/catalog/25261181522?query=%EB%B9%84%EB%93%AC%EC%83%B4%ED%91%B8&NaPm=ct%3Dkwc1k0dc%7Cci%3Defec4b2e79fc68655f620046f89ae1b69bf7893b%7Ctr%3Dslsl%7Csn%3D95694%7Chk%3D9d07e9d5cfefa2bdde8293b8996a17a4dd5cef57')">구매하기</button>
                </div>
          </div>
          <!-- col-lg-4 -->
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
  <script src="lib/fancybox/jquery.fancybox.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script type="text/javascript">
    $(function() {
      //    fancybox
      jQuery(".fancybox").fancybox();
    });
  </script>

</body>

</html>
