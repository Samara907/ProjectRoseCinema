<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/ticket/main.jsp</title>
</head>
<body>
Test Main<p/>
<a href="/RoseCinema/goInsertTicketForm.do">Insert Ticket</a><p/>
<a href="/RoseCinema/goDeleteTicketForm.do">Delete Ticket</a><p/>
<a href="/RoseCinema/goUpdateTicketForm.do">Update Ticket</a><p/>
<a href="/RoseCinema/goSelectTicketForm.do">Select Ticket</a><p/>

<a href="/RoseCinema/ticket">gogogogo</a>

<c:forEach var="ticket_list" items="${ticket_list }">
	${ticket_list.no }
</c:forEach>


dtg
</body>
</html>