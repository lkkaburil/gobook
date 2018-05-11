<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp" %>
<%String root=request.getContextPath(); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${root}/css/style.css" rel="stylesheet">
<style type="text/css"> 
.search{
    width : 80%;
    margin: 5px auto;
    text-align : center;
}
.
</style> 

<script type="text/javascript">
function incheck() {
	var f = document.frm;
	if(f.title.value=="") {
		alert("값좀 넣으라고!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		f.title.focus();
		return;
	}
	if(f.content.value=="") {
		alert("값좀 넣으라고!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		f.content.focus();
		return;
	}
	f.submit();
}
</script>

</head>
<body>
<div class="title">수정</div>
<form name="frm" method='post' action='update'>
<input type="hidden" name="memono" value='${dto.re_num}'>  
<input type="hidden" name="col" value="${param.col}">
<input type="hidden" name="word" value="${param.word}">
<input type="hidden" name="nowPage" value="${param.nowPage}">
<center>
<table width="70%" border="2" align="center" >
	<tr>
	<th width="50%;">제목</th>
	<td width="50%;"><input type="text" name="title" size="3" value='${dto.re_title}'></td>
	</tr>
	<tr>
	<th width="50%;">내용</th>
	<td width="50%;"><textarea rows="3" cols="3" name="content">${dto.re_content}</textarea></td>
	</tr>
</table>
<div class="bottom">
	<button type="button" onclick="incheck()">전송</button>
</div>
</form>
</center>
</body>
</html>