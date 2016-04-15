<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,java.util.*,bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Shopping Mall India @esamagri.com</title>
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<% String PRODUCT_NAME="";
   String seller="";%>

 
   
   

<div align="center">
<% 
String email2 = (String)session.getAttribute("email");
%>
<form action="Track" method="post">
<input type="text" name="email" value="<%=email2 %>">
<input type="text" name="order_id" id="order_id">
<input type="submit" class="btn btn-success" value="Submit">
</form>

<%
ArrayList<Order_Tracking> arry= (ArrayList<Order_Tracking>)request.getAttribute("arr");

if(arry!=null)
{
%>
<table>
<tr><th>Order Status</th></tr>
<% 
Iterator<Order_Tracking> it=arry.iterator();
while(it.hasNext())
{
	Order_Tracking ob=(Order_Tracking)it.next();
%>	
<tr>
<td><%=ob.getStatus_name()%></td>

</tr>
<% 
}




%>
</table>
<% 	
}




%>
</div><br><br><br><br><br><br><br><br><br><br>

<jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>
    
  
   
</body>
</html>