<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>영화 상세</title>
<html>
<style> 
html{height:100%;} 
body{height:100%;}
textarea {width:500px; height:80px; overflow:visible;} 
</style>

<head>
<script src='/RoseCinema/resource/jquery.js' type="text/javascript"></script>
<script src='/RoseCinema/resource/jquery.MetaData.js' type="text/javascript" language="javascript"></script>
<script src='/RoseCinema/resource/jquery.rating.js' type="text/javascript" language="javascript"></script>
<link href='/RoseCinema/resource/jquery.rating.css' type="text/css" rel="stylesheet"/>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js" type="text/javascript"></script>
</head>
	<script>
	$(function(){
	 $('.hover-star').rating({
	  focus: function(value, link){
	    var tip = $('#hover-test');
	    tip[0].data = tip[0].data || tip.html();
	    tip.html(link.title || 'value: '+value);
	  },
	  blur: function(value, link){
	    var tip = $('#hover-test');
	    $('#hover-test').html(tip[0].data || '');
	  }
	 });
	});
	</script>
</script>


<body>
<table border="1" width="700" align="center">
	<tr>
		<td colspan="3">
		<font size="5"><b>제목 :${dto.movie_name }</b></font>	</td>
	</tr>
	
	<tr>
		<td width="220" height="270" align="center">
		<img src="/RoseCinema/movie/movie_image/${dto.movie_image}">
		</td>
	
	
		<td>
		<b>개봉일</b> : ${dto.opendate } <br/>
		<b>감독</b> : ${dto.director }<br/>
		<b>출연진</b> : ${dto.actor } <br/>
		<b>장르</b> : ${dto.genre_id }<br/>
		<b>예매율</b> : ${dto.ticket_rate }&nbsp;&nbsp;&nbsp; <b>평점</b> : ${dto.score }&nbsp;&nbsp;&nbsp; <br/>
		</td>
		<td width="100" align="center">
		<a href=""><img src="/RoseCinema/movie/img/reserve2.jpg">
		</td>		
	</tr>
	
	<tr>
		<td colspan="3" height="100" >줄거리 ${dto.synopsis }</td>
	</tr>
	
	<tr>
		<td colspan="3" height="300" >
		<c:forTokens var="stil" items="${dto.stilcut}" delims=",">
			<img src="/RoseCinema/movie/stilcut/${stil}">
		</c:forTokens> 
		
		
		</td>
	</tr>
	
	<tr>
		<td colspan="3" width="500" height="350" align="center">
			<b>
				<video autoplay loop  id="bgvid">
	    			<source src="/RoseCinema/movie/video/${dto.video}" type="video/mp4">
				</video>
			
			
		
		</td>
	</tr>
	
	
	<tr>
	<td height="100%" colspan="3" align="center">
	<div id="tab-Testing" style='display:inline'>
	<form id="star" action="/RoseCinema/movie/comment.do" method="get">
	<table width="100%"> 
		<tr>
  			<td valign="top" height="50px" align="left">
				<div class="Clear">
				<b>한줄평</b>
    			<div>
    				<c:forEach begin="1" end="5" step="1" var="i">
    				<input class="hover-star" type="radio" name="score" value="${i}" title="${i}점"/>
    				</c:forEach>
   				</div>
   				</div> 
  			</td>
  		</tr>
  		
  		<tr>
  			<td valign="top" width="5">
  				<textarea name="content" width="500" height="200"></textarea>
   				<input type="submit" value="전송" />  
   			</td>
   		</tr>
	</table>
	</form>
	</div>
	</td>
	</tr>



</table>
</body>
</html>