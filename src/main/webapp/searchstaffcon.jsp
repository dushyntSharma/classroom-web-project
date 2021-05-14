<%@page import="utility.DBConnection"%>
<%@ page import="java.sql.*"%>
<%
String name = request.getParameter("val");
if (name == null || name.trim().equals("")) {
	out.print("<p>Please enter name!</p>");
} else {
	try {
		Connection con = DBConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from staff where name like '" + name + "%'");
		ResultSet rs = ps.executeQuery();

		if (!rs.isBeforeFirst()) {
	out.println("<p>No Record Found!</p>");
		} else {
	out.print("<table border='1' cellpadding='2' width='100%'>");
	out.print(
			"<tr><th>Name</th><th>Age</th><th>Address</th><th>City</th><th>State</th><th>Country</th><th>pincode</th><th>email</th><th>username</th></tr>");
	while (rs.next()) {
		out.print("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) + "</td><td>" + rs.getString(3)
				+ "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6)
				+ "</td><td>" + rs.getString(7) + "</td><td>" + rs.getString(8) + "</td><td>" + rs.getString(9)
				+ "</td></tr>");
	}
	out.print("</table>");
		} //end of else for rs.isBeforeFirst  
		con.close();
	} catch (Exception e) {
		out.print(e);
	}
} //end of else
%>
