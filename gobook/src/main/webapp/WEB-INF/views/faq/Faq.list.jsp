<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>faq</title>
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
		<h2><i class="glyphicon glyphicon-list-alt"></i>자주하는 질문들</h2>
		<br><br>
		 <table class="table table-hover table-bordered" style="text-align:center;">
		
			<tr>
				<th class="active" style="text-align:center;"><STRONG><BIG>번호</BIG></STRONG>
				<th class="active" style="text-align:center;"><STRONG><BIG>분류</BIG></STRONG></th>
				<th class="active" style="text-align:center;"><STRONG><BIG>제목</BIG></STRONG></th>
				<th class="active" style="text-align:center;"><STRONG><BIG>작성자</BIG></STRONG></th>
				<th class="active" style="text-align:center;"><STRONG><BIG>작성일</BIG></STRONG></th>
			</tr>
			
			
			<tbody>
			<tr>
				<td>2</td>
				<td>기간</td>
				<td><a href="#">총 예상 기간이 얼마나 걸리나요?</a></td>
				<td>lkkaburil</td>
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
			<td>비용</td>
			<td><a href="#">대략적인 비용이 궁금합니다.</a></td>
			<td>thomas1496</td>
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
	<button class="btn btn-Default btn-md" type="button" name="">뒤로가기</button>
	</div>
</body>
</html>