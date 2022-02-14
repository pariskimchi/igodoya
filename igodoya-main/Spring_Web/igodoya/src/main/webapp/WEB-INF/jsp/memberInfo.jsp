<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<%@ include file = "inc/logoMenu.jsp" %>
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">내 정보</h1>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                내 정보
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
	                                <tr>
	                                	<th>아이디</th>
	                                	<td><input type="text" name="memberId" value="${dto.memberId}" readonly="readonly"/></td>
	                                </tr>
	                                <tr>
	                                	<th>비밀번호</th>
	                                	<td><input type="password" name="memberPw" value="${dto.memberPw}"/></td>
	                                </tr>
	                                <tr>
	                                	<th>이름</th>
	                                	<td><input type="text" name="name" value="${dto.name}"/></td>
	                                </tr>
	                                <tr>
	                                	<th>전화번호</th>
	                                	<td><input type="text" name="mobile" value="${dto.mobile}"/></td>
	                                </tr>
	                                <tr>
	                                	<th>이메일</th>
	                                	<td><input type="text" name="email" value="${dto.email}"/></td>
	                                </tr>
	                                <tr>
	                                	<th>가입일</th>
	                                	<td><input type="text" name="entryDate" value="${dto.entryDate}" readonly="readonly"/></td>
	                                </tr>
	                                <tr>
	                                	<th>등급</th>
	                                	<td><input type="text" name="grade" value="${dto.grade}" readonly="readonly"/></td>
	                                </tr> 
                                </table>                                                              
                            </div>
                        </div>
                    </div>
                </main>
	<%@ include file = "inc/footerMenu.jsp" %>
</html>
