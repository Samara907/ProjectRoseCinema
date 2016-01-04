<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<font size="5">발행쿠폰 테이블</font>
<form action="/RoseCinema/couponNumPro.do" method="post">
<table border="1">
	<tr>
		<td>발행번호</td>
		<td><input type="text" name="coupon_num"></td>
	</tr>
	<tr>
		<td>쿠폰번호</td>
		<td><input type="text" name="coupon_id"></td>
	</tr>
	<tr>
		<td>사용날짜</td>
		<td><input type="date" name="used_date"></td>
	</tr>
	<tr>
		<td>사용자</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td align="center"><input type="submit" value="등록"/></td>
	</tr>
</table>
</form>	