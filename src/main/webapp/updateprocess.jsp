<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>   
 <%@include file="DBConn.jsp" %>
 <% request.setCharacterEncoding("utf-8");
 
 String custno=request.getParameter("custno");
 String custname=request.getParameter("custname");
 String phone=request.getParameter("phone");
 String address=request.getParameter("address");
 String joindate=request.getParameter("joindate");
 String gr=request.getParameter("gr");   //폼이름으로 적어주기
 String city=request.getParameter("city");
 
 PreparedStatement pstmt=null;
 try{
	 String sql="update member1026 set custname=?,phone=?,address=?,joindate=?,grade=?,city=? where custno=?";
	 pstmt=conn.prepareStatement(sql);
	 pstmt.setString(1,custname);
	 pstmt.setString(2,phone);
	 pstmt.setString(3,address);
	 pstmt.setString(4,joindate);
	 pstmt.setString(5,gr);
	 pstmt.setString(6,city);
	 pstmt.setString(7,custno);
	 pstmt.executeUpdate();%>
 
 <script>
  alert("회원수정이 완료되었습니다");
 location.href="select.jsp"
 </script>
 
 <%
 
 }
 catch(Exception e){
	 System.out.println("DB오류");
	 e.printStackTrace();
 }
 %>


</body>
</html>