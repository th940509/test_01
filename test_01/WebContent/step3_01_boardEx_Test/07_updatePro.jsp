<%@page import="boardEx_Test_01.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updatePro</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");	
	%>
	
		<jsp:useBean id="boardDTO" class="boardEx_Test_01.BoardDTO">
			<jsp:setProperty name="boardDTO" property="*"/>
		</jsp:useBean>
		
	<%
		boolean isUpdate = BoardDAO.getInstance().updateBoard(boardDTO);
	
		if(isUpdate) {
			
	%>
			<script>
				alert("수정되었습니다!");
				location.href="04_list.jsp"
			</script>
	<%
		}
		else {
	%>
			<script>
				alert("패스워드가 일치하지 않습니다 다시 확인 후 수정해 주세요!");
				history.go(-1);
			</script>
	<%
		}
	%>
</body>
</html>