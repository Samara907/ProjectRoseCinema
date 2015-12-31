<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<body>
<form>

	<table border="1" align="center">
	<tr>
		<td>
			<font>이벤트 분류</font>
		</td>
		<td colspan="3" cellspacing="0" cellpadding="0">
		<select name="event_id">
		    <option>무대인사</option>
		    <option>쿠폰</option>
		    <option>1+1</option>
		    <option>솔로탈출</option>
	    </select>
	    </td>
	 </tr>
	 <tr>
	 	<td>시작날짜</td>
	 	<td>
			<input type="date" name="estart_date">
		</td>
		<td>종료날짜</td>
		<td>
			<input type="date" name="eend_date">
		</td>
	</tr>
	<tr>
		<td>이벤트명</td>
		<td colspan="3">
			<input type="text" name="event_name">
		</td>
	</tr>
	<tr>
		<td>이미지</td>
		<td colspan="3">
			<input type="file" name="event_image">
		</td>
	</tr>
	<tr>
		<td>쿠폰명</td>
		<td colspan="3">
			<input type="text" name="coupon_name">
		</td>
	</tr>
	<tr>
		<td>쿠폰시작날짜</td>
	 	<td>
			<input type="date" name="cstart_date">
		</td>
		<td>쿠폰종료날짜</td>
		<td>
			<input type="date" name="cend_date">
		</td>
	</tr>
	<tr>
		<td>솔로탈출 인원</td>
		<td>
			<input type="text" name="event_count">
		</td>
	
		<td>영화정보</td>
		<td>
			<select name="screen_id">
				<option>히말라야</option>
				<option>스타워즈:깨어난포스</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center"><input type="submit" value="이벤트 등록"/></td>
	</tr>
	</table>
	
</form>
</body>