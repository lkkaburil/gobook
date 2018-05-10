<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>공지사항</title>

</head>	
<body>
<div class="container">
<h2><i class="glyphicon glyphicon-th-list"></i>공지사항</h2>
<br><br>
<table class="table table-bordered">
	<tr>
	<th style="text-align:center;">제목</th>
	<td><input type="text" name="제목" size="149">dto.getTitle</td>
	</tr>
	<tr>
	<th style="text-align:center;">내용</th>
	<td><textarea rows="24" cols="150">dto.getContent</textarea></td>
	</tr>
</table>
</div>
<br><br>
<div style="text-align: center;">
<button class="btn btn-Default btn-md" type="button" name="">등록</button>
<button class="btn btn-Default btn-md" type="button" name="">취소</button>
</div>
</body>
</html>