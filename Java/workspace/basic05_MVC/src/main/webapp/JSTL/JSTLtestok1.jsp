<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTLtestok1.jsp</title>
</head>
<body>
	<h3> 결과 페이지(JSP 문법) </h3>
<%
	String name = request.getParameter("name");
	int age		= Integer.parseInt(request.getParameter("age"));
	out.print("이름 : " + name + "<br>");
	out.print("나이 : " + age  + "<br>");
	
	//문1)나이가 10미만 "어린이", 20미만 "청소년",  나머지 "성인" 출력
	if (age < 10) {
		out.print(name + "님은 " + age + "세로 어린이 입니다.");
	} else if (age < 20) {
		out.print(name + "님은 " + age + "세로 청소년 입니다.");
	} else { out.print(name + "님은 " + age + "세로 성인 입니다."); }//if end 
	
	//문2)1~나이까지 짝수는 파랑색, 홀수는 빨강색으로 출력
	for(int i=1; i<=age; i++) {
		if (i%2==0){
			out.print("<span style='color:blue;'>" + i + "</span>");
		} else { out.print("<span style='color:red;'>" + i + "</span>"); } //if end
	}//for end



%>
</body>
</html>