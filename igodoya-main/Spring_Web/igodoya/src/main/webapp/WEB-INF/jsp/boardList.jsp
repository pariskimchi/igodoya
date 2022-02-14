<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
<link href="lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
<link rel="stylesheet" href="lib/advanced-datatable/css/DT_bootstrap.css" />
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet">
<link href="css/table-responsive.css" rel="stylesheet">

</head>

<body>
	<section id="container">
		<%@ include file="inc/logoMenu.jsp"%>
		<!-- **********************************************************************************************************************************************************
        사이드바 메뉴
        *********************************************************************************************************************************************************** -->
		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu" id="nav-accordion">
					<li class="mt"><a href="/main"> <i class="fa fa-dashboard"></i>
							<span>Dashboard</span>
					</a></li>
					<li class="mt"><a href="/hairfileUploadForm"> <i
							class="fa fa-camera"></i> <span>두피진단하기</span>
					</a></li>
					<li class="mt"><a href="/hairfileUploadForm"> <i
							class="fa fa-bar-chart-o"></i> <span>두피진단결과</span>
					</a></li>
					<li class="mt"><a href="/product"> <i
							class="fa fa-thumbs-up"></i> <span>추천제품</span>
					</a></li>
					<li class="mt"><a class="active" href="/boardList"> <i
							class="fa fa-comments-o"></i> <span>커뮤니티게시판</span>
					</a></li>
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
				<h3>
					<i class="fa fa-angle-right"></i> 커뮤니티게시판
				</h3>
				<div class="row mt">
					<div class="col-lg-12">
						<div class="content-panel">
							<section id="unseen">
								<div class="form-group">
									<label class="control-label">&nbsp;&nbsp;&nbsp;&nbsp;<b>전체
											${total} 건</b></label> <label class="control-label pull-right"><a
										href="/boardWriteForm" class="btn btn-theme">글작성</a>&nbsp;&nbsp;</label>
								</div>
								<div class="form-group">
									<table
										class="table table-bordered table-striped table-condensed table-hover">
										<colgroup>
											<col style="width: 5%">
											<col style="width: 60%">
											<col style="width: 20%">
											<col style="width: 10%">
											<col style="width: 5%">
										</colgroup>
										<thead>
											<tr>
												<th class="numeric">No</th>
												<th>제목</th>
												<th>작성자</th>
												<th class="numeric">작성일</th>
												<th class="numeric">조회수</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="dto" items="${boardList}">
												<tr onclick="location.href='/boardForm?idx=${dto.idx}'">
													<td>${dto.idx}</td>
													<td>${dto.title}</td>
													<td>${dto.memberId}</td>
													<td class="numeric">${dto.regDate}</td>
													<td class="numeric">${dto.views}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="form-group">
									<div class="row-fluid">
										<div class="span6">
											<div class="dataTables_paginate paging_bootstrap pagination">
												<ul>
													<li class="prev disabled"><a href="#">← Previous</a></li>
													<c:forEach var="cnt" begin="1" end="${pages}">
														<c:choose>
							                            	<c:when test="${cnt eq pageNum}">
							                            		<li class="active"><a href="/boardList?page=${cnt}">${cnt}</a></li>
							                            	</c:when>
							                            	<c:otherwise>
							                            		<li><a href="/boardList?page=${cnt}">${cnt}</a></li>
							                            	</c:otherwise>
							                            </c:choose>
													</c:forEach>
													<li class="next"><a href="#">Next → </a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
						<!-- /content-panel -->
					</div>
					<!-- /col-lg-4 -->
				</div>
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
				<a href="responsive_table.html#" class="go-top"> <i
					class="fa fa-angle-up"></i>
				</a>
			</div>
		</footer>
		<!--footer end-->
	</section>
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="lib/jquery/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script class="include" type="text/javascript"
		src="lib/jquery.dcjqaccordion.2.7.js"></script>
	<script src="lib/jquery.scrollTo.min.js"></script>
	<script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
	<!--common script for all pages-->
	<script src="lib/common-scripts.js"></script>
	<!--script for this page-->
</body>

</html>
