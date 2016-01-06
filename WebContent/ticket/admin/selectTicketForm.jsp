<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<div name="TicketList"></div>
</body>
</html>