<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %> <!-- 경로는 그때그때 수정 -->
	<!-- 본문 시작 bbsDelProc.jsp -->
	<h3>삭제 상세</h3>

<% 
   int bbsno=Integer.parseInt(request.getParameter("bbsno"));
   String passwd = request.getParameter("passwd").trim();

   
   dto.setBbsno(bbsno);
   dto.setPasswd(passwd);
   
   int cnt=dao.delete(dto);
   
   if(cnt==0) {
      out.println("<p> 비밀번호가 일치하지 않습니다. </p>");
      out.println("<p><a href='javascript:history.back()'> 다시 시도 </a></p>");
   }else {
      out.println("<script>");
      out.println("   alert('게시글이 삭제되었습니다.');");
      out.println("   location.href='bbsList.jsp';"); //목록페이지로 이동하는 javascript 코드
      out.println("</script>");
   }//if end
%>
	<!-- 본문 끝 -->
<%@ include file="../footer.jsp" %> <!-- 경로는 그때그때 수정 -->