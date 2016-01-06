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
			$.each(result, function(key,value) {
				$("#TicketList").append(value.ticket_id +"</p>");
			});
		}
	});
}
</script>
</head>
<body>
	<div>
		<table id="ticketList">
			<tr>
				<td>티켓아이디</td>
			</tr>
		</table>
	</div>
</body>
</html>