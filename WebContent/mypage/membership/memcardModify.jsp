<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

* 멤버쉽 카드 등록하기


<form method="post" action="inputPro" name="mcardmodify" onSubmit="return checkIt()">
	<table border="1">
		<tr>
			<td>카드번호</td>
			<td><input type"text" name="mcard_id" size="16"></td>
		</tr>
		
		<tr>
			<td>카드이름 설정</td>
			<td><input type"text" name="mcard_name" size="16"></td>
		</tr>
		
		
		<tr>
			<td colspan="2">
			<input type="button" value="취소">
			<input type="submit" value="등록">
			</td>
		</tr>
	</table>

</form>

<br/>

* 나의 카드 

<table border="1">
	<tr>
		<td>카드이름</td>  <td>카드번호</td> <td>발급일</td>
	</tr>
	
	<tr>
		<td colspan="3">
		[DB:mcard테이블에서 게시판처럼 차트 쭉 불러오기!!]
		</td>
	</tr>



</table>










</body>
</html>