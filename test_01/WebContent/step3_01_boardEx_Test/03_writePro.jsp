<%@page import="boardEx_Test_01.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wirtePro</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	
	<jsp:useBean id="boardDTO" class="boardEx_Test_01.BoardDTO">
		<jsp:setProperty name="boardDTO" property="*"/>
	</jsp:useBean>
	
	<%
		BoardDAO.getInstance().insertBoard(boardDTO);
	%>
	<script>
		alert("게시물이 등록되었습니다.")
		location.href="04_list.jsp";
	</script>
</body>
</html>