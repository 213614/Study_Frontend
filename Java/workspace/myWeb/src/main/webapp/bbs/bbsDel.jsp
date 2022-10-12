<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %> 
<%@ include file="../header.jsp" %> <!-- 경로는 그때그때 수정 -->
	<!-- 본문 시작 bbsDel.jsp -->
	<h3> 삭제 </h3>
	<p>
		<a href="bbsList.jsp" class="btn btn-link">목록</a>
	</p>
<%
	int bbsno = Integer.parseInt(request.getParameter("bbsno"));
	
	// 성적 게시판과 다르게 글 작성 비밀번호와 일치해야 삭제 가능 (글번호:bbsno와 passwd값이 일치해야 삭제)
	// 비밀번호는 사용자에게 입력받는 값! = 비밀번호를 작성할 수 있는 form양식을 만들어줘야함 
%>
	<div class="container">
		<form method="post" action="bbsDelProc.jsp" onsubmit="return pwCheck()"><!-- myscript.js -->
			<input type="hidden" name="bbsno" id="bbsno" value="<%= bbsno %>">
			<table style=" border:none; width:50%;">
				<tr>
					<th style="text-align:center;">비밀번호</th>
					<td>
						<input type="password" name="passwd" id="passwd" required>
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<input type="submit" value="삭제"  class="btn btn-link">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 본문 끝 -->
<%@ include file="../footer.jsp" %> <!-- 경로는 그때그때 수정 -->