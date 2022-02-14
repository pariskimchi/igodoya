<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<%@ include file = "inc/logoMenu.jsp" %>
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">커뮤니티 게시판</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                커뮤니티 게시판
                            </div>
                            <div class="card-body"> 
                                <table id="datatablesSimple">
                                	<thead>
                                		<tr>
                                			<th>번호</th>
                                			<th>제목</th>
                                			<th>작성자</th>
                                			<th>작성일</th>
                                			<th>조회수</th>
                                		</tr>
                                	</thead>
                                	<tbody>
                                		<c:forEach var="dto" items="${boardList}">
                                			<tr>
	                                			<td>${dto.id}</td>
	                                			<td>${dto.title}</td>
	                                			<td>${dto.memberId}</td>
	                                			<td>${dto.regDate}</td>
	                                			<td>${dto.views}</td>
                                			</tr>
                                		</c:forEach>
                                	</tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
	<%@ include file = "inc/footerMenu.jsp" %>
</html>
