<%@page import="model.Staff"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="jsonstyle.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Staff> staff = new LinkedList<>();
	%>
	<%
	String staffJSON = null;
	%>
	<%
	staff = (List<Staff>) session.getAttribute("staff");
	%>
	<%
	staffJSON = (String) session.getAttribute("staffJSON");
	%>
	<%
	out.println(staff.toString());
	%>
	<%
	out.println(staffJSON);
	%>

</body>
</html>