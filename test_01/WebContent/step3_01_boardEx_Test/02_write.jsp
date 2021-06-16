<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wirte</title>
</head>
<body>
	<form method="post" action="03_writePro.jsp">
		<h2>게시글 쓰기</h2>
			<table border="1" style="width:700px">
				<colgroup>
					<col width="20%">
					<col width="80%">
				</colgroup>
				<tr>
					<td>작성자</td>
					<td><input type="text" id="writer" name="writer"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" id="subject" name="subject"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" id="email" name="email"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" id="password" name="password"></td>
				</tr>
				<tr>
					<td align="center">글내용</td>
					<td><textarea rows="10" cols="50" id="content" name="content"></textarea></td>
				</tr>
			</table>
			<p>
				<input type="submit" value="글쓰기">
				<input type="button" onclick="location.href='04_list.jsp'" value="전체 게시글 보기">
			</p>
	</form>
</body>
</html>