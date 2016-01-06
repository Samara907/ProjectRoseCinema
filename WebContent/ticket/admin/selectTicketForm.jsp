<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>selectTicketForm</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	getAllTicketList();
})

function getAllTicketList() {
	$.ajax({
		url:"/RoseCinema/getAllTicketList",
		type:"POST",
		data:"",
		cache:false,
		async:false,
		dataType:"JSON",
		
		success:function(result) {
			//var table = '';
			$.each(result, function(key,value) {
				//table += '<tr><td>' + value.ticket_id + '</td></tr>';
				 $('#ticketList').append("<tr>"+
						 "<td>"+value.ticket_id +"</td>"+
						 "<td>"+value.no +"</td>"+
						 "<td>"+value.seat_id +"</td>"+
						 "<td>"+value.screen_id +"</td>"+
						 "<td>"+value.member_id +"</td>"+
						 "<td>"+value.mcard_id +"</td>"+
						 "<td>"+value.coupon_id +"</td>"+
						 "<td>"+value.movie +"</td>"+
						 "<td>"+value.theater +"</td>"+
						 "<td>"+value.screen +"</td>"+
						 "<td>"+value.ticketDate +"</td>"+
						 "<td>"+value.count +"</td>"+
						 "<td>"+value.seat1 +"</td>"+
						 "<td>"+value.seat2 +"</td>"+
						 "<td>"+value.seat3 +"</td>"+
						 "<td>"+value.seat4 +"</td>"+
						 "<td>"+value.seat5 +"</td>"+
						 "<td>"+value.seat6 +"</td>"+
						 "<td>"+value.seat7 +"</td>"+
						 "<td>"+value.seat8 +"</td>"+
						 "<td>"+value.buyDate +"</td>"+
						 "<td>"+value.buySum +"</td>"+
						 "<td>"+value.buyType +"</td>"+
						 "<td>"+value.phone +"</td>"+
						 "<td>"+value.isCancel +"</td>"+
						 "<td>"+value.cancelDate +"</td>"+
						 "</tr>");
			});
			//$('#ticketList').append(table);
		}
	});
}
</script>
</head>
<body>
	<div>
		<button onclick="window.open('/RoseCinema/Insert')"></button>
	</div>
	<div>
		<table id="ticketList" border="3">
			<tr>
				<td>TicketID</td>
				<td>No</td>
				<td>SeatID</td>
				<td>ScreenID</td>
				<td>MemberID</td>
				<td>McardID</td>
				<td>CouponID</td>
				<td>Movie</td>
				<td>Theater</td>
				<td>Screen</td>
				<td>TicketDate</td>
				<td>Count</td>
				<td>Seat1</td>
				<td>Seat2</td>
				<td>Seat3</td>
				<td>Seat4</td>
				<td>Seat5</td>
				<td>Seat6</td>
				<td>Seat7</td>
				<td>Seat8</td>
				<td>BuyDate</td>
				<td>BuySum</td>
				<td>BuyType</td>
				<td>Phone</td>
				<td>IsCancel</td>
				<td>CancelDate</td>
			</tr>
		</table>
	</div>
</body>
</html>