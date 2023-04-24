<!-- t1_CookiesMidDelete.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	
	for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("cMid")){
		cookies[i].setMaxAge(0);
		response.addCookie(cookies[i]);
		}	// cookies[i]가 cMid 라면 쿠키의 유효시간을 0으로 만듦(삭제)
	}
%>

<script>
	alert("쿠키에 저장된 아이디 삭제")
	location.href = "t1_CookiesMain.jsp";
</script>
