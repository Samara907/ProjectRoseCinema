<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/ticket/test/TestMain.jsp</title>
</head>
<body>
Test Main<p/>
<a href="/RoseCinema/goInsertTicketForm.do">Insert Ticket</a><p/>
<a href="/RoseCinema/goDeleteTicketForm.do">Delete Ticket</a><p/>
<a href="/RoseCinema/goUpdateTicketForm.do">Update Ticket</a><p/>
<a href="/RoseCinema/goSelectTicketForm.do">Select Ticket</a><p/>

<table border="1">
	<tr>
		<td>ticket_id</td>
		<td>no</td>
		<td>seat_id</td>
		<td>screend_id</td>
		<td>screen_name</td>
		<td>screen_type</td>
		<td>screen_typename</td>
		<td>theater_id</td>
		<td>theater_name</td>
		<td>line_no</td>
		<td>seat_no</td>
		<td>seat_x</td>
		<td>seat_y</td>
		<td>seat_type</td>
		<td>seat_typename</td>
		<td>price</td>
		<td>buy_date</td>
		<td>member_id</td>
		<td>mcard_id</td>
		<td>buy_type</td>
		<td>movie_id</td>
		<td>movie_name</td>
		<td>date_info</td>
		<td>start_time</td>
		<td>end_time</td>
		<td>coupon_id</td>
	</tr>

<c:forEach var="AllTicket" items="${list }">
	<tr>
	<td>${AllTicket.ticket_id }</td>
	<td>${AllTicket.no }</td>
	<td>${AllTicket.seat_id }</td>
	<td>${AllTicket.screen_id }</td>
	<td>${AllTicket.screen_name }></td>
	<td>${AllTicket.screen_type }</td>
	<td>${AllTicket.screen_typename }</td>
	<td>${AllTicket.theater_id }</td>
	<td>${AllTicket.theater_name }</td>
	<td>${AllTicket.line_no }</td>
	<td>${AllTicket.seat_no }</td>
	<td>${AllTicket.seat_x }</td>
	<td>${AllTicket.seat_y }</td>
	<td>${AllTicket.seat_type }</td>
	<td>${AllTicket.seat_typename }</td>
	<td>${AllTicket.price }</td>
	<td>${AllTicket.buy_date }</td>
	<td>${AllTicket.member_id }</td>
	<td>${AllTicket.mcard_id }</td>
	<td>${AllTicket.buy_type }</td>
	<td>${AllTicket.movie_id }</td>
	<td>${AllTicket.movie_name }</td>
	<td>${AllTicket.date_info }</td>
	<td>${AllTicket.start_time }</td>
	<td>${AllTicket.end_time }</td>
	<td>${AllTicket.coupon_id }</td>
	</tr>
</c:forEach>
</table>
</body>
</html>