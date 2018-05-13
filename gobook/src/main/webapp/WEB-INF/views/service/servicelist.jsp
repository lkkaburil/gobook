<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>서비스 체크</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
// function fn_reserread(){
// 	var sv_num = "";
// 	if(document.frm.RowCheck[i].checked==true){
// 	var serviceChk = document.getElementsByName("RowCheck");
// 	serviceChk.action = "reservation/read?sv_num=${sv_num}";
// 	serviceChk.submit();
// 	}else{
// 	 alert("서비스를 선택 해주세요.")
// 	 return;
//  }
// }
</script>
<style type="text/css">
.container{
  top: 70px;
  left:50px;
  position:absolute;
}
</style>
</head>
<body>
<div class="container">
<form name="frm" action="" method="post">
<div id="service">
<h2>서비스</h2><input type="button" value="추가">
<table class="table table-striped">
  <thead>
    <tr>
    <th></th>
     <th class="hh" width="500">서비스를 선택해주세요</th>
    </tr>
  </thead>
  
  <tbody>
   <tr>
     
     <th class="header" width="200"><input type="checkbox" name="RowCheck" value="num"></th>
     <th><a href="#">서비스 명이 여기에 들어갑니다</a><input type="button" value="펼치기" style="float:right"></th>
    </tr>
  
   <tr>
     
     <th class="header" width="200"><input type="checkbox" name="RowCheck" value="num"></th>
     <th><a href="#">서비스 명이 여기에 들어갑니다</a><input type="button" value="펼치기" style="float:right"></th>
    </tr>
 
   <tr>
  
     <th class="header" width="100"><input type="checkbox" name="RowCheck" value="num"></th>
<th><a href="#">서비스 명이 여기에 들어갑니다</a><input type="button" value="펼치기" style="float:right"></th>
    </tr>
    
    <tr>
    <th class="header" width="100"><input type="checkbox" name="RowCheck" value="num"></th>
<th><a href="#">서비스 명이 여기에 들어갑니다</a><input type="button" value="펼치기" style="float:right"></th>
    </tr>
    
    <tr>
    <th class="header" width="100"><input type="checkbox" name="RowCheck" value="num"></th>
<th><a href="#">서비스 명이 여기에 들어갑니다</a><input type="button" value="펼치기" style="float:right"></th>
    </tr>
   
  </tbody>

</table>
</div>
 
 <input type="button" value="적용" onclick="fn_reserread()">

</form>

</div>

</body>
</html>