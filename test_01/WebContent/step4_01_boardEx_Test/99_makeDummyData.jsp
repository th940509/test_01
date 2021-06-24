<%@page import="step4_00_boardEx_Test.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<% 
		boardDAO.getInstance().setDummy();
	%>
	<script>
		alert("테스트 데이터가 생성되었습니다.");
		location.href="T_04_list.jsp";
	</script>
	
</body>
</html>