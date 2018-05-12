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
<title>qna</title>
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
	function read(){
		var url = "${root}/qna/read";
		location.href = url;
	}
	function qcreate(){
		var url = "${root}/qna/create";
		location.href = url;
	}

	function realtimeClock() {
		document.rtcForm.rtcInput.value = getTimeStamp();
		setTimeout("realtimeClock()", 1000);
	}

	function getTimeStamp() { // 24시간제
		var d = new Date();

		var s = leadingZeros(d.getFullYear(), 4) + '-'
				+ leadingZeros(d.getMonth() + 1, 2) + '-'
				+ leadingZeros(d.getDate(), 2) + ' ' +

				leadingZeros(d.getHours(), 2) + ':'
				+ leadingZeros(d.getMinutes(), 2) + ':'
				+ leadingZeros(d.getSeconds(), 2);

		return s;
	}

	function leadingZeros(n, digits) {
		var zero = '';
		n = n.toString();

		if (n.length < digits) {
			for (i = 0; i < digits - n.length; i++)
				zero += '0';
		}
		return zero + n;
	}
</script>
</head>
<body>
	<div class="jol1">
	<form name="rtcForm">
</form>
<div class="container">
		<h2><i class="glyphicon glyphicon-th-list"></i>질문과 답변</h2>
		<br><br>
		 <table class="table table-hover table-bordered" style="text-align:center;">
		
			<tr>
				<th class="active" style="text-align:center;"><STRONG><BIG>번호</BIG></STRONG>
				<th class="active" style="text-align:center;"><STRONG><BIG>제목</BIG></STRONG></th>
				<th class="active" style="text-align:center;"><STRONG><BIG>작성자</BIG></STRONG></th>
				<th class="active" style="text-align:center;"><STRONG><BIG>작성일</BIG></STRONG></th>
			</tr>
			
			
			<tbody>
			<tr>
				<td>2</td>
				<td><a href="javascript:read()">4월 27(금)업데이트 점검 일정 연기</a></td>
				<td>관리자</td>
				<td>
				<script language="JavaScript"> 
var today = new Date( ) 
document.write(today.getFullYear( ) , "년 ", 
               today.getMonth( )+1 , "월 " , today.getDate( ) , "일") 
</script>	
				</td>
			</tr>
			<tr>
			<td>1</td>
			<td><a href="javascript:read()">일부 펄 상품 판매 종료 사전 안내</a></td>
			<td>운영자</td>
				<td>
				<script language="JavaScript"> 
var today = new Date( ) 
document.write(today.getFullYear( ) , "년 ", 
               today.getMonth( )+1 , "월 " , today.getDate( ) , "일") 
</script>	
				</td>
				</tr>
				</tbody>
		</table>
		</div>
		<div style="text-align: center;">
	페이징1 2
	</div>
	</div>
	<br><br>
	<div style="text-align: center;">
	<button class="btn btn-Default btn-md" type="button" name="">메인으로</button>
	<button class="btn btn-Default btn-md" type="button" name="" onclick="history.back()">뒤로가기</button>
	<button class="btn btn-Default btn-md" type="button" name="" onclick="qcreate()">글 작성</button>
	</div>
</body>
</html>