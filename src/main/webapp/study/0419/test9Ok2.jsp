<!--  test9Ok2.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>

<%
String mid = request.getParameter("mid");
String pwd = request.getParameter("pwd");

// admin, khd1234, 기타 등등.~~ 비밀번호 : 1234
if ((mid.equals("admin") || mid.equals("hkd1234")) && pwd.equals("1234")) {
	System.out.println("회원 인증 성공!");
%>
<script>
	alert("회원 인증 성공!!")
	location.href = "test9Success.jsp";
</script>
<%
} else {
System.out.println("회원 인증 실패!");
%>
<script>
	alert("회원 인증 실패!!")
	location.href = "test9.jsp";
</script>
<%
}
%>