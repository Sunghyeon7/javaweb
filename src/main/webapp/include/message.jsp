<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> massage.jsp </title>
	<jsp:include page="/include/bs4.jsp"/>
	
	<script>
		'use strict';
	    
	    if("${msg}"!="NO") alert("${msg}");
	    location.href = '${url}';
	</script>
</head>
<body>
<p><br/></p>
<div class="container">

</div>
<p><br/></p>
</body>
</html>