<%@page import="boardEx_Test_01.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deletePro</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	
	<jsp:useBean id="boardDTO" class="boardEx_Test_01.BoardDTO">
		<jsp:setProperty name="boardDTO" property="*"/>
	</jsp:useBean>
	
	<%
		boolean isDelete = BoardDAO.getInstance().deleteBoard(boardDTO);
	
		if(isDelete) {
	%>
		<script>
			alert("삭제되었습니다.")
			location.href="04_list.jsp";
		</script>
	<%
		} 
		else {
	%>
		<script>
			alert("패스워드가 틀립니다!")
			history.go(-1);
		</script>
	<%
		}
	%>
</body>
</html>