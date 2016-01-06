<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<table>
	<c:forEach var="eventDTO" items="${eventlist}">
		<tr>
			<td>
				<a href="/RoseCinema/eventContent?event_id=${eventDTO.event_id}">
					<img src="/RoseCinema/event/img/${eventDTO.event_image}" width="100" height="150" /> 
				</a><br />
				${eventDTO.event_name} <br />
				${eventDTO.estart_date} ~ ${eventDTO.eend_date }
			</td>
		</tr>
	</c:forEach>
</table>