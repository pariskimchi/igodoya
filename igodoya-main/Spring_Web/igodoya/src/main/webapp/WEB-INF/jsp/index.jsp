<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>I GO 頭야</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/index-page.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                	<c:choose>
                		<c:when test="${empty memberId}"> 
                    		<a class="navbar-brand" href="/index">I GO 頭야</a>
                    	</c:when>
                       	<c:otherwise>
                       		<a class="navbar-brand" href="/main">I GO 頭야</a>
                       	</c:otherwise>
                    </c:choose>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <c:if test="${not empty memberId}">
                            	<p class="lead fw-normal text-white-50 mb-4">${memberId}[${grade}]님 이 로그인 중입니다.</p>
                            </c:if>
                            <c:choose>
                            	<c:when test="${empty memberId}">         
                            		<li class="nav-item"><a class="nav-link" href="/index">Home</a></li>                                         
		                            <li class="nav-item"><a class="nav-link" href="/loginForm">Login</a></li>
		                            <li class="nav-item"><a class="nav-link" href="/memberInputForm">Join</a></li>
                            	</c:when>
                            	<c:otherwise>
                            		<li class="nav-item"><a class="nav-link" href="/main">Home</a></li>
                            		<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                            	</c:otherwise>
                            </c:choose>
                            
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Header-->
            <header class="bg-dark py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                <h1 class="display-5 fw-bolder text-white mb-2">AI 두피 상태 진단을 통해 라이프 스타일을 관리하세요</h1>
                                <p class="lead fw-normal text-white-50 mb-4">Is your scalp health safe? 'I GO 頭YA' protects your scalp through AI diagnosis. A new hair life begins when you join us!</p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Get Started</a>
                                    <a class="btn btn-outline-light btn-lg px-4" href="#!">Learn More</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5" src="img/skin.jpg" alt="..." /></div>
                    </div>
                </div>
            </header>
            <!-- Features section-->
            <section class="py-5" id="features">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5 mb-lg-0"><h2 class="fw-bolder mb-0">두피 건강 증진을 위한 4가지 스텝</h2></div>
                        <div class="col-lg-8">
                            <div class="row gx-5 row-cols-1 row-cols-md-2">
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-collection"></i></div>
                                    <h2 class="h5">Step 1. 두피 이미지 촬영</h2>
                                    <p class="mb-0">배송 받은 현미경 카메라로 두피를 촬영하세요.</p>
                                </div>
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-building"></i></div>
                                    <h2 class="h5">Step 2. 두피 상태 진단</h2>
                                    <p class="mb-0">AI를 통한 두피 상태를 진단 받으세요.</p>
                                </div>
                                <div class="col mb-5 mb-md-0 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-toggles2"></i></div>
                                    <h2 class="h5">Step 3. 두피 케어 솔루션 제공</h2>
                                    <p class="mb-0">두피 유형과 상태에 따른 라이프 스타일을 제안 받으세요.</p>
                                </div>
                                <div class="col h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-toggles2"></i></div>
                                    <h2 class="h5">Step 4. 두피 건강 증진</h2>
                                    <p class="mb-0">건강한 라이프 스타일로 두피 건강을 증진 시키세요.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Testimonial section-->
            <div class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-10 col-xl-7">
                            <div class="text-center">
                                <div class="fs-4 mb-4 fst-italic">"I GO 頭YA 덕분에 두피 문제의 원인을 찾고 라이프 스타일을 개선할 수 있었어요! 요즘 매일 매일이 자신감 넘치고 즐거워요"</div>
                                <div class="d-flex align-items-center justify-content-center">
                                    <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                    <div class="fw-bold">
                                        Tom Ato
                                        <span class="fw-bold text-primary mx-1">/</span>
                                        (민머리, Seoul)
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Footer-->
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; I GO 頭야 2021</div></div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>