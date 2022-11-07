<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록화면</title>
<link rel="stylesheet" href="style.css">
<style>
table{width:50%;margin:auto; height:230px}
table,td,th{border:1px solid gray;}
input[type="text"]{width:97%; height:80%;}
input[type="button"]{width:150px; height:80%;}
</style>

<script>
function check(){
	 if(document.form.custname.value==""){
		 alert("회원성명이 입력되지 않았습니다.");
		 document.form.custname.focus();}
	 else{
		 document.form.submit();}
	 }	
</script>

</head>
<body>

<header>
<h2>쇼핑몰 회원관리 ver1.0</h2>
</header>

<nav>
<ul>
<li><a href="insert.jsp">회원등록</a></li>
<li><a href="select.jsp">회원 목록 조회/수정</a></li>
<li><a href="m_select.jsp">회원 매출 조회 </a></li>
<li><a href="index.jsp">홈으로.</a></li>
</ul>
</nav>

<section>
<h2>홈쇼핑 회원 등록</h2>
<form name="form" method="post" action="insertprocess.jsp">
<table>
<tr>
<th>회원번호</th>
<td><input type="text" name="custno" ></td>
</tr>
<tr>
<th>회원성명</th>
<td><input type="text" name="custname" id="custname" ></td>
</tr>
<tr>
<th>회원전화</th>
<td><input type="text" name="phone" ></td>
</tr>
<tr>
<th>주소</th>
<td><input type="text" name="address" ></td>
</tr>
<tr>
<th>가입일자</th>
<td><input type="text" name="joindate"></td>
</tr>
<tr>
<th>고객등급[A:VIP,B:일반,C:직원]</th>
<td><input type="text" name="gr"></td>
</tr>
<tr>
<th>도시코드</th>
<td><input type="text" name="city"></td>
</tr>
<tr>
<th colspan="2">
<input type="button" name="insert" value="등록" onclick="check()">
<input type="button" name="select" value="조회"></th>
</tr>




</table>
</form>
</section>
<footer>
HRDKOREA COPYRIGHHT C 2022 ALL RIGHT RESERVED. HUMAN RESOURCES DEVELOPMENT SERVICE OF KOREA
</footer>
</body>
</html>