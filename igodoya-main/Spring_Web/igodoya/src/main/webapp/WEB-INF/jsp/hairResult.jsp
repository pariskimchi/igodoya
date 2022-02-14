<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<%@ include file = "inc/logoMenu.jsp" %>
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">두피 진단 결과</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                두피 진단 결과
                            </div>
                            <div class="card-body">
                            	<c:choose>
	                            	<c:when test="${result == '정상'}">
	                            		삐빅- 당신은 정상입니다.<br>
			                            <img class="img-fluid rounded-3 my-5" src="img/hair_normal.png" alt="정상" /> 
	                            	</c:when>
	                            	<c:when test="${result == '경증'}">
	                            		삐빅- 당신은 탈모 경증입니다. ㅠㅠ<br>
	                            		<img class="img-fluid rounded-3 my-5" src="img/hair_loss.png" alt="탈모" /> 
	                            	</c:when>
	                            	<c:when test="${result == '중증'}">
	                            		삐빅- 당신은 탈모 중증입니다. ㅠㅠ<br>
	                            		<img class="img-fluid rounded-3 my-5" src="img/hair_loss.png" alt="탈모" /> 
	                            	</c:when>
	                            	<c:otherwise>
	                            		결과가 확인 되지 않습니다.
	                            	</c:otherwise>
	                            </c:choose>         	                                               
                            </div>
                        </div>
                    </div>
                </main>
	<%@ include file = "inc/footerMenu.jsp" %>
</html>
