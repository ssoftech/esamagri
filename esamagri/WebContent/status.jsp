<%@page import="courier_model.Track_shipment_model"%>
<%@page import="db.Db"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.Db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
System.out.println("status ");
String order_id1=request.getParameter("order_id");
int order_id=Integer.parseInt(order_id1);
String status=Track_shipment_model.show_status(order_id);
System.out.println("status "+status);
%>
order status <%=status%>
<span><a href="edit.jsp?order_id=<%=order_id%>">edit</a></span>
</body>
</html>