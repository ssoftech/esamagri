<%@page import="courier_model.Track_shipment_model"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.Db"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="db.Db.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  
String order_id1=request.getParameter("order_id");
int order_id=Integer.parseInt(order_id1);
%>
<div><%=order_id%></div>
<form action="Update_shipment" method="post">
<select id="status" name="status">
<% Connection con=Db.Condb();
ArrayList<String> ar=Track_shipment_model.status();
for(String ob:ar)
{
%>
<option value="<%=ob%>"><%=ob%></option>
<%} %>
</select> 
<input type="hidden" name="order_id" value="<%=order_id%>"/>
<input type="submit" value="update"/>
</form>
</body>
</html>