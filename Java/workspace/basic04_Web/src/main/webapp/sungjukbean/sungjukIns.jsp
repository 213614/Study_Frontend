<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="net.sungjuk.*" %>

<jsp:useBean id="dao" class="net.sungjuk.SungjukDAO" scope="page"></jsp:useBean>
<jsp:useBean id="dto" class="net.sungjuk.SungjukDTO" scope="page"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>sungjukIns.jsp</title>
</head>
<body>
	<h3>* 성적 결과 페이지 *</h3>

<%
	request.setCharacterEncoding("UTF-8");

	String uname = request.getParameter("uname").trim();
	int kor 	 = Integer.parseInt(request.getParameter("kor").trim());
	int eng 	 = Integer.parseInt(request.getParameter("eng").trim());
	int mat 	 = Integer.parseInt(request.getParameter("mat").trim());
	String addr  = request.getParameter("addr").trim();
	int aver = (kor+eng+mat)/3;

	// ① DTO 객체를 사용하기 전 
	// int cnt = dao.insert(uname, kor, eng, mat, aver, addr);
	// 값을 전달해야하는 값이 많으면 ↑ 이렇게 하나씩 말고 한번에 묶어서 보낼 수도 있다.
	// = getter / setter 을 활용하면 한번에 넘기기 가능 
	// == SungjukDTO
	
	// ② DTO 객체를 사용한 경우 
	// 전달값을 모두 DTO 객체에 담는다 
	dto.setUname(uname);
	dto.setKor(kor);
	dto.setEng(eng);
	dto.setMat(mat);
	dto.setAver(aver);
	dto.setAddr(addr);
	
	int cnt = dao.create(dto);
	
	
	if(cnt==0) {
		out.println("<p>성적 입력 실패</p>");
		out.println("<p><a href='javascript:history.back()'>[다시 시도]</a></p>");
	} else {
		out.println("<script>");
		out.println("	alert('성적이 입력되었습니다.');");
		out.println("	location.href='sungjukList.jsp';");	// 목록페이지로 이동
		out.println("</script>");
	}//if end

%>

</body>
</html>