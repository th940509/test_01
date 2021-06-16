<%@page import="boardEx_Test_01.BoardDAO"%>
<%@page import="boardEx_Test_01.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>
</head>
<body>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDTO bdto = BoardDAO.getInstance().getOneUpdateBoard(num);
	%>
	
	<form method="post" action="07_updatePro.jsp">
		<h1>게시글 수정하기</h1>
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
				<td><input type="text" name="subject" value="<%=bdto.getSubject() %>"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>글내용</td>
				<td><textarea rows="10" cols="60" name="content"><%=bdto.getContent() %></textarea></td>
			</tr>
		</table>
		<p>
			<input type="hidden" name="num" value="<%=bdto.getNum() %>">
			<input type="submit" value="글 수정하기">
			<input type="button" value="전체 글 보기" onclick="loction.href='04_list.jsp'">
		</p>
	</form>
</body>
</html>