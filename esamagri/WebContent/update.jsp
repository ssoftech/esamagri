<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap -->
   
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css2/address.css" type="text/css">
   <title>Update</title>
   
   
    
    <script language="JavaScript" type="text/javascript">
	
	function validateForm()
	  {
	 
	  
	  
	  var email=document.getElementById("email").value;
	  /* var atposition=x.indexOf("@");  
	  var dotposition=x.lastIndexOf("."); */ 
	  var phn=document.getElementById("phn").value;
	  
	  
	
	  
	  
	  if(email==null || email=="")
	  {
		  /* if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
			  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
			  return false;  
			  }   */

	  alert("Enter Valid Mail-id");
	  return false;
	   }
	  
	  if(phn==null || phn=="")
	  {

	  alert("Provide Your contact details");
	  return false;
	   }
	  
	 
	 }
	
	
</script>
    
    
   
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="searchbox.jsp"></jsp:include>
<div class="container" style="padding-top: 70px;padding-bottom: 195px;">

<div id='cssmenu'>
<ul>
   <li class='active'><a href="myaccount.jsp">My Account</a></li>
   <li><a href='myorder.jsp'>My Orders</a></li>
   <li><a href="personal_Info.jsp">Personal Information</a></li>
   <li><a href="change_password.jsp">Change Password</a></li>
   <li><a href="address.jsp">Addresses</a></li>
   <li><a href="update.jsp">Update Account</a></li>
   <li><a href="deactivate.jsp">Deactivate Account</a></li>
   
</ul>
</div>
<% String email0=(String)session.getAttribute("email");
System.out.println("email "+email0);
%>

<div id="apDiv2">

<form action="update_account"  method="post"  class='form-horizontal' onSubmit="return validateForm()">
<table align="center" style="border: 1px; margin-left: 500px; margin-top: -300px; width: 340x;" >
  <caption>
    <h3 align="center" style="font-style: italic;">Update Email/Mobile</h3> 
  </caption>
  <tr>
    
    <td><input type="hidden" name="EMAIL" value="<%=email0%>" ></td>
  </tr>
  
  
  <tr>
    <td>Mobile Number</td>
    <td width="180"><input type="text" name="MOBILE" id="phn"></td>
    <td colspan="1"><input type="submit" name="Edit"></td>
  </tr>
  
  </table>
  </form>
  </div></div>
  
   
    <jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>  
    
  
</body>
</html>