<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>jstl_Ex1.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
</head>
<body>
<p><br/></p>
<div class="container">
  <p>
    콤보상자에 숫자 1~6까지를 기억시키고 화면에 보여준다.<br/>
    이때 숫자를 선택하면 아래쪽(demo)으로 선택한 숫자의 그림파일을 출력한다.
  </p>
  	<select>
  		<option value="">선택하기</option>
  		<option >1</option>
  		<option>2</option>
  		<option>3</option>
  		<option>4</option>
  		<option>5</option>
  		<option>6</option>
  	</select>
  
</div>
<div id=demo></div>
<p><br/></p>
</body>
</html>