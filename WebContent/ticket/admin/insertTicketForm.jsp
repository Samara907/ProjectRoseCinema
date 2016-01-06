<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InsertTicketForm</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	function insertTicket(ticket) {
		$.ajax({
			url:"/RoseCinema/insertTicket",
			type:"POST",
			data:""
		})
	}
	
	function getSeatList
</script>
</head>
<body>
	<form action="/RoseCinema/insertTicket" method="post">
		<table border="3">
			<tr>
				<td>Ticket_Id</td>
			</tr>
			<tr>
				<td>No</td>
			</tr>
			<tr>
				<td>SeatID</td>
			</tr>
			<tr>
				<td>ScreenID</td>
			</tr>
			<tr>
				<td>MemberID</td>
			</tr>
			<tr>
				<td>McardID</td>
			</tr>
			<tr>
				<td>CouponID</td>
			</tr>
			<tr>
				<td>Movie</td>
			</tr>
			<tr>
				<td>Theater</td>
			</tr>
			<tr>
				<td>Screen</td>
			</tr>
			<tr>
				<td>TicketDate</td>
			</tr>
			<tr>
				<td>Count</td>
			</tr>
			<tr>
				<td>Seat1</td>
			</tr>
			<tr>
				<td>Seat2</td>
			</tr>
			<tr>
				<td>Seat3</td>
			</tr>
			<tr>
				<td>Seat4</td>
			</tr>
			<tr>
				<td>Seat5</td>
			</tr>
			<tr>
				<td>Seat6</td>
			</tr>
			<tr>
				<td>Seat7</td>
			</tr>
			<tr>
				<td>Seat8</td>
			</tr>
			<tr>
				<td>BuyDate</td>
			</tr>
			<tr>
				<td>BuySum</td>
			</tr>
			<tr>
				<td>BuyType</td>
			</tr>
			<tr>
				<td>Phone</td>
			</tr>
			<tr>
				<td>IsCancel</td>
			</tr>
			<tr>
				<td>CancelDate</td>
			</tr>
		</table>
	</form>
</body>
</html>