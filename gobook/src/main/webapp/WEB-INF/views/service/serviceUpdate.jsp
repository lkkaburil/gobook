<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>서비스 수정</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.container{
  top: 70px;
  left:200px;
  position:absolute;
}
.bottom{
 bottom: 100px;
  left:500px;
  position:absolute;
}
</style>
</head>
<body>
<DIV class="container">
 <h2>상세 서비스 수정</h2>
 
<FORM name='frm' 
 method='POST' 
 action='./service/update'
 enctype="multipart/form-data"
 onsubmit="return inputCheck(this)">
  <TABLE>
    <TR>
      <TH>서비스 사진</TH>
      <TD><input type="file" name="fname" accept=".jpg,.png,.gif"></TD>
      <td>사진은 JPG,PNG,GIF파일만 올려주세요.</td>
    </TR>
    <tr>
      <TH>서비스번호</TH>
      <TD><input type="text" name="sv_num_upper"></TD>
    </TR>
    <TR>
      <TH>상세서비스명</TH>
      <TD><input type="text" name="sv_title"></TD>
    </TR>
    <TR>
      <TH>서비스 내용</TH>
      <TD>
      <textarea rows="10" cols="45" name="sv_content"></textarea>
      </TD>
    </TR>
    <TR>
      <TH>서비스가격</TH>
      <TD><input type="text" name="sv_price"></TD>
    </TR>
     <TR>
      <TH>타임당 예약인원수</TH>
      <TD><input type="text" name="sv_timeperson"></TD>
    </TR>
    <TR>
      <TH>템플릿</TH>
      <TD>
      <select name="sv_template">
       <option value="0">선택하세요</option>
       <option value="A01">버전1</option>
       <option value="A02" selected>버전2</option>
       <option value="A03">버전3</option>
      </select>
      </TD>
      <td>템플릿을 선택하세요</td>
    </TR>
    
  </TABLE>
  
  </FORM>
  </DIV>
  
  <DIV class='bottom'>
    <input type='button' value='수정' onclick="serupdate()">
    <input type='reset' value='취소'>
  </DIV>


</body>
</html>