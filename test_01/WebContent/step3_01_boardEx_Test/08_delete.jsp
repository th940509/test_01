<%@page import="step3_00_boardEx_Test.BoardDAO"%>
<%@page import="step3_00_boardEx_Test.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDTO bdto = BoardDAO.getInstance().getOneUpdateBoard(num);
	%>
	
		<form method="post" action="09_deletePro.jsp">
			<h1>게시글 삭제하기</h1>
			<table border="1">
				<tr>
					<td>작성자</td>
					<td><%=bdto.getWriter() %></td>
				</tr>
				<tr>
					<td>작성일</td>
					<td><%=bdto.getRegDate() %></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><%=bdto.getSubject() %></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr align="right">
					<td colspan="4">
						<input type="hidden" name="num" value="<%=bdto.getNum() %>">
						<input type="submit" value="글삭제">
						<input type="button" value="전체글 보기" onclick="location.href='04_list.jsp'">
					</td>
				</tr>
			</table>
		</form>
</body>
</html>