<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>

<%
String mid = request.getParameter("mid");
String pwd = request.getParameter("pwd");

// admin, khd1234, 기타 등등.~~ 비밀번호 : 1234
if ((mid.equals("admin") || mid.equals("hkd1234")) && pwd.equals("1234")) {

	out.println("<script>");
	out.println("alert('회원 인증 성공!!'')");
	out.println("	location.href = 'test9Success.jsp';");
	out.println("</script>");
} else {
	
	out.println("<script>");
	out.println("alert('회원 인증 실패!!')");
	out.println("location.href = 'test9.jsp';");
	out.println("</script>");
}
%>