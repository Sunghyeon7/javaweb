<!-- t3_ApplicationSave.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%
	String mid = request.getParameter("mid")==null ? "admin" : request.getParameter("mid");
	String nickName = request.getParameter("nickname")==null ? "관리자" : request.getParameter("nickname");
	String name = request.getParameter("name")==null ? "생성자" : request.getParameter("name");


	
	application.setAttribute("aMid", mid);
	application.setAttribute("aNickName", nickName);
	application.setAttribute("aName", name);
%>

<script>
	alert("세션에 저장 완료!! 세션값 : ${aMid}");
	location.href = "t3_ApplicationMain.jsp";
</script>