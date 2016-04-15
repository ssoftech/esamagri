<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
<title>Update Password</title>
<link rel="stylesheet" href="css2/address.css" type="text/css">

</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="searchbox.jsp"></jsp:include>

<div class="container" style="padding-top: 70px;padding-bottom: 160px;">

 
<div id='cssmenu'>
<ul>
   <li class='active'><a href="my_account.jsp">My Account</a></li>
   <li><a href='myorder.jsp'>My Orders</a></li>
   <li><a href="personal_info.jsp">Personal Information</a></li>
   <li><a href="change_password.jsp">Change Password</a></li>
   <li><a href="address.jsp">Addresses</a></li>
   <li><a href="update.jsp">Update Account</a></li>
   <li><a href="deactivate.jsp">Deactivate Account</a></li>
   
</ul>
</div>
<% String email2=(String)session.getAttribute("email");
System.out.println("email "+email2);
%>
<div id="apDiv2">
<form action="update_change_password"  method="post"  class='form-horizontal' onSubmit="return validateForm()">
<table align="center" style="border: 1px; margin-left: 500px; margin-top: -300px; width: 340x;" >
  <caption>
    <h3 align="center" style="font-style: italic;">Change Password</h3> 
  </caption>
   <tr>
    <td><input type="hidden" name="EMAIL" value="<%=email2%>" ></td>
  </tr>
  <tr>
    <td width="104">Old Password</td>
    <td width="180"><input type="password" name="password" id="psw"></td>
  </tr>
  <tr>
    <td>New Password</td>
    <td><input type="password" name="PASSWORD"></td>
  </tr>
 
<tr>
<td height="31" colspan="2" align="center" >
<input type="submit" class="active"  value="Update">
</td>
</tr>

</table>
</form>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>
   
</body>
</html>