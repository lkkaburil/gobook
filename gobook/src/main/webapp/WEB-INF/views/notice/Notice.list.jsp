<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%  request.setCharacterEncoding("utf-8");%>
<c:set var="root" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>notice</title>
<style type="text/css">
 a{
 	color: black;
 }
 a:hover {
	text-decoration: none;
}
container{
text-align:center;
margin:auto;
}

</style>
<script type="text/javascript">
	function read(n_num){
		var url = "${root}/notice/read";
		url += "?n_num="+n_num;
		url += "&col=${col}";
		url += "&word=${word}";
		url += "&nowPage=${nowPage}";		
		location.href = url;
	}
	
	function ncreate(n_num){
		var url = "${root}/notice/create";
		url += "?n_num="+n_num;
		url += "&col=${col}";
		url += "&word=${word}";
		url += "&nowPage=${nowPage}";		
		location.href = url;	
	}
</script>
</head>
<body>
	<div class="jol1">
	<form name="rtcForm">
</form>
<div class="container">
		<h2><i class="glyphicon glyphicon-th-list"></i>공지사항</h2>
		<br><br>
		 <table class="table table-hover table-bordered" style="text-align:center;">
		
			<tr>
				<th class="active" style="text-align:center;"><STRONG><BIG>번호</BIG></STRONG>
				<th class="active" style="text-align:center;"><STRONG><BIG>제목</BIG></STRONG></th>
				<th class="active" style="text-align:center;"><STRONG><BIG>작성자</BIG></STRONG></th>
				<th class="active" style="text-align:center;"><STRONG><BIG>작성일</BIG></STRONG></th>
			</tr>
			
			
			<tbody>
			<c:choose>
				<c:when test="${empty list}">
				<tbody>
				<tr>
				<td colspan="5">
				등록된 글이 없습니다.
				</td>
				</tr>
				</tbody>
				</c:when>
				<c:otherwise>
					<c:forEach var="dto" items="${list}">
				<tbody>
			<tr>
				<td>${dto.n_num}</td>
				<td><a href="javascript:read('${dto.n_num}')">${dto.n_title}</a></td>
				<td>${dto.a_id}</td>
				<td>${dto.n_wdate}</td>
			</tr>
				</tbody>
					</c:forEach>
				</c:otherwise>
				</c:choose>
		</table>
		</div>
		<div style="text-align: center;">
	${paging}
	</div>
	</div>
	<br><br>
	<div style="text-align: center;">
	<button class="btn btn-Default btn-md" type="button" name="" onclick="main">메인으로</button>
	<button class="btn btn-Default btn-md" type="button" name="" onclick="history.back()">뒤로가기</button>
	
	<button class="btn btn-Default btn=md" type="button" name="" onclick="ncreate('${dto.n_num}')">글 작성</button> 
	
	<input type="hidden" name="n_num" value="${param.n_num}">
	<input type="hidden" name="n_title" value="${param.n_title}">
	<input type="hidden" name="n_content" value="${param.n_content}">
	<input type="hidden" name="n_wdate" value="${param.n_wdate}">
	<input type="hidden" name="a_id" value="${param.a_id}">
	<input type="hidden" name="col" value="${param.col}">
	<input type="hidden" name="word" value="${param.word}">
	<input type="hidden" name="nowPage" value="${param.nowPage}">
	</div>
</body>
</html>