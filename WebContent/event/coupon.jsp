<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<font size="5">쿠폰 테이블</font>
<form>
	<table border="1">
		<tr>
			<td>쿠폰번호</td>
		    <td><input type="text" name="coupon_id"></td>
			<td>쿠폰이름</td>
		 	<td><input type="text" name="coupon_name"></td>
		</tr>
		<tr>
			<td>시작날짜</td>
			<td><input type="date" name="start_date"></td>
			<td>종료날짜</td>
			<td><input type="date" name="end_date"></td>
		</tr>
		<tr>
			<td>쿠폰타입</td>
			<td><input type="number" name="coupon_type"></td>
			<td>발행수</td>
			<td><input type="number" name="coupon_count"></td>
			<td>등급</td>
			<td><input type="text" name="mgrade_id"></td>
		<tr>
			<td align="center"><input type="submit" value="쿠폰 발급"/></td>
		</tr>
	</table>
</form>