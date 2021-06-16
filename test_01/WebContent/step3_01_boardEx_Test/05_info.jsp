<%@page import="boardEx_Test_01.BoardDAO"%>
<%@page import="boardEx_Test_01.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>info</title>
</head>
<body>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		BoardDTO bdto= BoardDAO.getInstance().getOneBoard(num);
	%>
	<h1>게시글 보기</h1>
	<br>
	<table style="width:700px; text-align:center" border="1">
		<colgroup>
			<col width="20%">
			<col width="80%">
		</colgroup>
		<tr>
			<td>글번호</td>
			<td><%=bdto.getNum() %></td>
		</tr>
		<tr>
			<td>조회수</td>
			<td><%=bdto.getReadCount() %></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><%=bdto.getWriter() %></td>
		</tr>
		<tr>
			<td>작성일</td>
			<td><%=bdto.getRegDate() %></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><%=bdto.getEmail() %></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><%=bdto.getSubject() %></td>
		</tr>
		<tr>
			<td>글내용</td>
			<td><%=bdto.getContent() %></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="수정하기" onclick="location.href='06_update.jsp?num=<%=bdto.getNum() %>'">
				<input type="button" value="삭제하기" onclick="location.href='08_delete.jsp?num=<%=bdto.getNum() %>'">
				<input type="button" value="목록보기" onclick="location.href='04_list.jsp'">
			</td>
		</tr>
	</table>
</body>
</html>