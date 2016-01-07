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
	selectAllTicketList();

})


/*  $('#ticketList').keydown(function(event) {
	if (event.which == 13) {s
		alert("SDfsdf");
		$.print( event );
	}
}); */

function updateThisData(inputData) {
		if($(inputData)) {
			var $columnID = document.getElementById(inputData.getAttribute('id')).getAttribute('id');
			var $updateData = document.getElementById(inputData.getAttribute('id')).value;
			alert("columnID=" +$columnID+ "    updateData=" +$updateData);
		}
/*  		if(event.keyCode   == 13) {
			$.ajax({
				url:"/RoseCinema/update" +$colum,
				type:"POST",
				data:{"\"$columnID\" +":"+\"$updateData\""},
				cache:false,
				async:false,
				dataType:"JSON"
			})
			alert("3");
		} */

	}; 

/* $( '#test' ).click(function() {
	alert("1");
	  $( '#test' ).keydown();
	  alert("2");
	}); */

function selectAllTicketList() {
	$.ajax({
		url:"/RoseCinema/selectAllTicketList",
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
						 "<td>"+
						 "<button onclick=\"window.open('/RoseCinema/updateTicketForm', 'updateTicketForm', 'width=300,height=300,location=no,status=np,scrollbars=yes')\">"+
						 value.ticketID +
						 "</button>"+
						 "</td>"+
						 "<td><input id=\""+value.ticketID+"no\"			type=\"text\" value=\""+value.no       		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"seatID\"		type=\"text\" value=\""+value.seatID   		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"screenID\"	type=\"text\" value=\""+value.screenID 		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"memberID\"	type=\"text\" value=\""+value.memberID 		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"mcardID\"		type=\"text\" value=\""+value.mcardID 		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"couponID\"	type=\"text\" value=\""+value.couponID 		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"movie\"		type=\"text\" value=\""+value.movie			+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"theater\" 	type=\"text\" value=\""+value.theater		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"screen\"		type=\"text\" value=\""+value.screen		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"ticketDate\"	type=\"text\" value=\""+value.ticketDate	+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"count\"		type=\"text\" value=\""+value.count			+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"seat1\"		type=\"text\" value=\""+value.seat1			+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"seat2\"		type=\"text\" value=\""+value.seat2			+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"seat3\"		type=\"text\" value=\""+value.seat3			+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"seat4\"		type=\"text\" value=\""+value.seat4			+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"seat5\"		type=\"text\" value=\""+value.seat5			+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"seat6\"		type=\"text\" value=\""+value.seat6			+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"seat7\"		type=\"text\" value=\""+value.seat7 		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"seat8\"		type=\"text\" value=\""+value.seat8 		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"buyDate\"		type=\"text\" value=\""+value.buyDate 		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"buySum\"		type=\"text\" value=\""+value.buySum 		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"buyType\"		type=\"text\" value=\""+value.buyType 		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"phone\"		type=\"text\" value=\""+value.phone 		+"\"onkeyup=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"isCancel\"	type=\"text\" value=\""+value.isCancel 		+"\"onkeydown=\"updateThisData(this)\"></td>"+
						 "<td><input id=\"cancelDate\"	type=\"text\" value=\""+value.cancelDate 	+"\"onkeydown=\"updateThisData(this)\"></td>"+
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
		<button onclick="window.open('/RoseCinema/insertTicketForm', 'InsertTicketForm', 'width=300,height=300,location=no,status=no,scrollbars=yes')">InsertTicket</button>
	</div>
	<div>
	<form>
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
				
				<td><input id="screenID" type="text" value="sdfds"  onkeydown="updateThisData(this)"></td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>