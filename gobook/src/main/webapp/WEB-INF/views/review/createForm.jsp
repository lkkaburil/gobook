<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/ssi/ssi.jsp" %>
<%String root=request.getContextPath(); %>

<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 
<script type="text/javascript">
function incheck(f){
	if(f.title.value==""){
		alert("제목을 입력하세요");
		f.title.focus();//커서를 옯긴다
		
		return false;
	}/* 
	if(f.content.value==""){
		alert("내용을 입력하세요");
		f.content.focus();//커서를 옯긴다
		
		return false;
	} */
	if (CKEDITOR.instances['content'].getData() == '') {
	      window.alert('내용을 입력해 주세요.');
	      CKEDITOR.instances['content'].focus();
	      return false;
	
	}
	
	
}
</script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
 <script type="text/JavaScript">
   window.onload=function(){
     CKEDITOR.replace('content');  // <TEXTAREA>태그 id 값
  };
 </script>

</head> 
<body>
 
	<h2><span class="glyphicon glyphicon-pencil"></span>등록</h2>
<div class="container">
 
<FORM name='frm' 
	method='POST' 
	action='./create'
	onsubmit="return incheck(this)"
	enctype="multipart/form-data"> 
  <TABLE class="table table-bordered">
  <tr>
      <TH>제목</TH>
      <TD><input type="text" name="re_title" ></TD>
    </TR>
    <TR>
      <TH>내용</TH>
      <TD><textarea rows="10" cols="45" name="re_content"></textarea></TD>
    </TR>
    <TR>
      <TH>파일</TH>
      <TD><input type="file" name="filenameMF" ></TD>
    </TR>
  </TABLE>
  
  <DIV style="text-align: center;">
    <input type='submit' class="btn btn-default btn-md" value='등록' >
    <input type='button' class="btn btn-default btn-md" value='취소' onclick="history.back()">
  </DIV>
</FORM>
 
 </div>
</body>
</html> 

