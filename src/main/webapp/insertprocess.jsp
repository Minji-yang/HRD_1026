<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBConn.jsp"%>
<%
request.setCharacterEncoding("utf-8");
String no=request.getParameter("custno");
String name=request.getParameter("custname");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String joindate=request.getParameter("joindate");
String gr=request.getParameter("gr");

String city=request.getParameter("city");
PreparedStatement pstmt=null;
try{
	String sql="insert into member1026 values(?,?,?,?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,no);
	pstmt.setString(2,name);
	pstmt.setString(3,phone);
	pstmt.setString(4,address);
	pstmt.setString(5,joindate);
	pstmt.setString(6,gr);
	pstmt.setString(7,city);
		
	pstmt.executeUpdate();
	
%>
<script>
alert("회원등록이 완료되었습니다.");
location.href="select.jsp"
</script>

<%}

catch(Exception e){
	System.out.println("저장실패");
	e.printStackTrace();
}
%>
