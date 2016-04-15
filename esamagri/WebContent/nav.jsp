<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>E-grocery/nav</title>

<link href="css2/nav.css" rel="stylesheet" type="text/css">

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> 
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top animate" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index.jsp">E-samagri</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        
                    <li>
                        <a href="index.jsp""><span class="glyphicon glyphicon-home" style="padding:5px"></span>Home</a>   
                    </li>
        
        <li>
                        <a href="retailer sign_in.jsp""><span class="glyphicon glyphicon-tags" style="padding:5px"></span>Sell</a>   
                    </li>
                                                        
                   
                   
                   <%
	
			
			String email6 = (String)session.getAttribute("email");
			
			System.out.println("Email is" + email6);
			if (email6 != null) {
				
		%>
                <li>  <a href="track_order.jsp"><span class="glyphicon glyphicon-map-marker" style="padding:5px"></span>Track Order</a></li>
                           
                    
		
<%} else{%>
		        <li><a  href="log_in5.jsp">Track order</a></li>
                            
                        
                        <%} %>
                   
                   
                   
                      
        
          </ul>
       
     
         <form action="LoginServlet" method="post" accept-charset="UTF-8" id="login-nav">    
      <ul class="nav navbar-nav navbar-right">
     
     
   <%
	
			
			String email = (String)session.getAttribute("email");
			
			System.out.println("Email is" + email);
			if (email != null) {
				
		%>   
     
        <li><i class="fa fa-user"></i><font color="red">Hi <%=email %></font></li>
         <li><a href="Logout.jsp"><i class="fa fa-user"></i>Logout</a></li>           
           <li><a href="myaccount.jsp"><i class="fa fa-user"></i>myaccount</a></li>          
		
<%} else{%>
		       
                           
                       
    
      
        <li><p class="navbar-text">Already have an account?</p></li>
        <li class="dropdown">
         <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								
								<div class="form-group">
								
								<input type="hidden" name="page" value="index.jsp"/> 
								</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" class="form-control" name="usermail" id="exampleInputEmail2" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" name="password" id="exampleInputPassword2" placeholder="Password" required>
                                             
                                            <%String error=request.getParameter("Message");
						if(error!=null){%>
						<div><font color="red"><%=error%></font></div><%} %>
                  
                  
                  
            
                  
                                             
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 
							</div>
							<div class="bottom text-center">
								New here ? <a href="Customer_Signup.jsp"><b>Join Us</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul> <%} %></form>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


</body>
</html>