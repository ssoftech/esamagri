<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- Bootstrap -->
    
   
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css2/address.css" type="text/css">
    <link rel="stylesheet" href="css2/navbar.css">
   
<title>Change Address</title>


 
    <script language="JavaScript" type="text/javascript">
	

	 function validateForm()
	  {
	  var Name=document.getElementById("Name").value;
	  var add=document.getElementById("add").value;
	  var Landmark=document.getElementById("Landmark").value;
	  var City=document.getElementById("City").value;
	  var State=document.getElementById("State").value;
	  var City_Pin_Code=document.getElementById("City_Pin_Code").value;
	  var phn=document.getElementById("phn").value;
	  
	  
	  
	  if(Name==null || Name=="")
	  {

	  alert("Enter Your Name");
	  return false;
	   }
	  
	  if(add==null || add=="")
	  {
		  
	  alert("Enter Your Address details");
	  return false;
	  }
	  
	  if(Landmark==null || Landmark=="")
	  {

	  alert("Enter Your Landmark");
	  return false;
	   }
	  
	  if(City==null || City=="")
	  {

	  alert("Enter Your City");
	  return false;
	   }
	  
	  if(State==null || State=="")
	  {

	  alert("Enter Your State");
	  return false;
	   }
	  
	  if(City_Pin_Code==null || City_Pin_Code=="")
	  {

	  alert("Enter Your City Pin Code");
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
   
    <div class="container" style="padding-top: 70px;padding-bottom: 30px;">
    
       

    
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
<form action="address_serv"  method="post"  class='form-horizontal' onSubmit="return validateForm()">
<table align="center" style="border: 1px; margin-left: 500px; margin-top: -300px; width: 340x;" >
  <caption>
    <h3 align="center" style="font-style: italic;">Update Address</h3> 
  </caption>
  
  <tr> <td><input type="hidden" name="EMAIL" value="<%=email2%>" ></td>
    <td>Address</td>
    <td>
    <textarea rows="3" cols="22" name="ADDRESS" id="add"></textarea>
    </td>
  </tr>
  
  
<tr>  
<td height="31" colspan="2" align="center" >
<input type="submit" class="active"  value="Update">
</td>
</tr>

</table>
</form>
</div></div><br><br><br><br><br><br><br>
  
    <jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>
</body>
</html>