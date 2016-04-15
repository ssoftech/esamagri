<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



    <link rel="stylesheet" href="style.css">
    

   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css2/account.css" media="screen">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   
    <script language="JavaScript" type="text/javascript">
	function login(showhide) {
		if (showhide == "show") {
			document.getElementById('popupbox').style.visibility = "visible";
		} else if (showhide == "hide") {
			document.getElementById('popupbox').style.visibility = "hidden";
		}
	}

	
	
	
</script>
    
   
   
<title>My Account</title>
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<div class="container" style="padding-top: 70px;padding-bottom: 30px;">

<div id='cssmenu'>
<ul>
   <li class='active'><a href="myaccount.jsp">My Account</a></li>
   <li><a href="myorder.jsp">My Orders</a></li>
   <li><a href="personal_info.jsp">Personal Information</a></li>
   <li><a href="change_password.jsp">Change Password</a></li>
   <li><a href="address.jsp">Addresses</a></li>
   <li><a href="update.jsp">Update Account</a></li>
   <li><a href="deactivate.jsp">Deactivate Account</a></li>
   
</ul>
</div>
 </div>
  <jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>  
</body>
</html>