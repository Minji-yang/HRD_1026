<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 조회 수정</title>
<link rel="stylesheet" href="style.css">
<style>
table{width:90%;margin:auto; height:250px}
table,td,th{border:1px solid gray;text-align:center}
table td.custno{color:#ddd;}
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
<h2>회원목록 조회/수정</h2>
<%@ include file="DBConn.jsp" %>
<table border="1">
<tr>
<th>회원번호</th>
<th>회원성명</th>
<th>전화번호</th>
<th>주소</th>
<th>가입일자</th>
<th>고객등급</th>
<th>거주지역</th>
</tr>
<%
ResultSet rs=null;
PreparedStatement pstmt=null;
int no=0;

try{
  String sql="select custno,custname,phone,address,to_char(joindate,'YYYY-MM-DD'),grade,city from member1026";
  pstmt=conn.prepareStatement(sql);
  rs=pstmt.executeQuery();
  while(rs.next()){
		String custno=rs.getString("custno");
		String custname=rs.getString(2);
		String phone=rs.getString(3);
		String address=rs.getString(4);
		String joindate=rs.getString(5);
		String gr=rs.getString("grade");
		String grade="";
		if((gr.equals("A"))||(gr.equals("a")))
		{grade="VIP";}
		else if(gr.equals("B"))
		{grade="일반";}
		else if(gr.equals("C"))
		{grade="직원";}
		String city=rs.getString(7);
	    no++;
%>
<tr>
<td class="custno"><a href="update.jsp?custno=<%=custno%>"><%=custno %></a></td>
<td><%=custname %></td>
<td><%=phone %></td>
<td><%=address %></td>
<td><%=joindate %></td>
<td><%=grade%></td>
<td><%=city%></td>
</tr>
	<% }
		}catch(Exception e){
			System.out.println("DB 오류");
			e.printStackTrace();
		}
		%>		
</table>
</section>
<footer>
HRDKOREA COPYRIGHHT C 2022 ALL RIGHT RESERVED. HUMAN RESOURCES DEVELOPMENT SERVICE OF KOREA
</footer>
</body>
</html>