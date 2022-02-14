<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
	<%@ include file = "inc/logoMenu.jsp" %>
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">전체회원조회</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                전체 회원 조회
                            </div>
                            <div class="card-body">
                            	<table id="datatablesSimple">
                                	<thead>
                                		<tr>
                                			<th>아이디</th>
                                			<th>비밀번호</th>
                                			<th>이름</th>
                                			<th>전화번호</th>
                                			<th>이메일</th>
                                			<th>가입일</th>
                                			<th>등급</th>
                                		</tr>
                                	</thead>
                                	<tbody>
                                		<c:forEach var="dto" items="${memberList}">
                                			<tr>
	                                			<td>${dto.memberId}</td>
	                                			<td>${dto.memberPw}</td>
	                                			<td>${dto.name}</td>
	                                			<td>${dto.mobile}</td>
	                                			<td>${dto.email}</td>
	                                			<td>${dto.entryDate}</td>
	                                			<td>${dto.grade}</td>
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
