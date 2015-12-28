<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

포인트 현황
<br/>
현재 보유 포인트: [DB:mpoint_history의 point데이터 이용]P
<br/>
<hr>

** 멤버십 카드 정보<br/>
카드 리스트  &nbsp; &nbsp; &nbsp; &nbsp; <input type="button" value="카드 등록 및 해지" onclick="location.href='memcardModify.jsp'">

<table border="1">
	<tr>
		<td width="100">NO</td>
		<td width="100">카드번호</td>
		<td width="100">등록일</td>
	</tr>
	
	<tr>
		<td colspan="3"> [DB:카드 리스트 DB에서 꺼내주기]</td>
	</tr>
</table>
<br/>
 <hr>
 ** 멤버쉽 포인트 적립/사용 내역
 <select id="mempointType">
		<option value="all">전체</option>
		<option value="saving">적립</option>
		<option value="use">사용</option>
		<option value="event">이벤트</option>
</select>

<table border="1">	 
	 
	 <tr>
	 	<td>일자</td><td>이용내용</td><td>이용금액</td><td>적립포인트</td><td>사용포인트</td><td>구분</td>
	 </tr>
	 
	 
	 <tr>
	 	[DB:mpoint테이블에서 게시판형태로 쫘르륵 불러오기!!&&select box에 따라 타입별로 불러오기 기능도!]
	 </tr>
 </table>
 



</body>
</html>