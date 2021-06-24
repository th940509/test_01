<%@page import="step3_00_boardEx_Test.BoardDAO"%>
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
	
	<jsp:useBean id="boardDTO" class="step3_00_boardEx_Test.BoardDTO">
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