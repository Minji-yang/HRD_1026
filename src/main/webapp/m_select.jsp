<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈화면</title>
<link rel="stylesheet" href="style.css">
<style>
table{width:50%;margin:auto; height:230px}
table,td,th{border:1px solid gray; text-align:center}
</style>
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
<h2>회원 매출 조회</h2>
<%@ include file="DBConn.jsp" %>
<table border="1">
<tr>
<th>회원번호</th>
<th>회원성명</th>
<th>고객등급</th>
<th>매출</th>
</tr>
<%
PreparedStatement pstmt=null;
ResultSet rs=null;
try{
  String sql="select b.custno,a.custname,a.grade,sum(b.price) from member1026 a,money1026 b where a.custno=b.custno group by b.custno,a.custname,a.grade order by sum(b.price)desc";
  pstmt=conn.prepareStatement(sql);
  rs=pstmt.executeQuery();
  while(rs.next()){
		String custno=rs.getString(1);
		String custname=rs.getString(2);
		String grade=rs.getString(3);
		String mm=rs.getString(4);
       if(grade.equals("A")){
    	   grade="VIP";}
       else if(grade.equals("B")){
    	   grade="일반";  }
       else if(grade.equals("C")){
    	   grade="직원";
       }
%>
<tr>
<td><%=custno%></td>
<td><%=custname%></td>
<td><%=grade%></td>
<td><%=mm %>
</tr>
<%
}}catch(Exception e){
System.out.println("DB오류");
e.printStackTrace();} %>
</table>

</section>
<footer>
HRDKOREA COPYRIGHHT C 2022 ALL RIGHT RESERVED. HUMAN RESOURCES DEVELOPMENT SERVICE OF KOREA
</footer>
</body>
</html>
