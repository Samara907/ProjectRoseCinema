<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/test/genre/GenreMain.jsp</title>
</head>
<body>
	<a href="/RoseCinema/goInsertGenrePage.do">Go Insert Genre</a><p />
	<a href="/RoseCinema/goDeleteGenrePage.do">Go Delete Genre</a><p />
	<a href="/RoseCinema/goUpdateGenrePage.do">Go Update Genre</a><p />
	<a href="/RoseCinema/goSelectGenrePage.do">Go Select Genre</a><p />
<table border="1">
	<tr>
		<td>genre_id</td>
		<td>genre_name</td>
	</tr>
	<c:forEach var="list" items="${list }">
		<tr>
			<td>${list.genre_id }</td>
			<td> ${list.genre_name }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>