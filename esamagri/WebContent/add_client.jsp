<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="../dashboard/NiceAdmin/img/favicon.png">

    <title>E-Courier/Add-Client</title>

    <!-- Bootstrap CSS -->    
    <link href="css4/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css4/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css4/elegant-icons-style.css" rel="stylesheet" />
    <link href="css4/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css4/style.css" rel="stylesheet">
    <link href="css4/style-responsive.css" rel="stylesheet" />
  <style type="text/css">
    #apDiv1 {
	position: absolute;
	width: 534px;
	height: 278px;
	z-index: 1;
	top: 655px;
	left: 254px;
	margin-top: -36%;
	margin-left: 15%;
}
    </style>

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
</head>

  <body>
  <!-- container section start -->
    <!-- container section start -->
  <section id="container" class="">
     
      
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="courierdashboard.jsp" class="logo">E <span class="lite">Courier</span></a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text">
                        </form>
                    </li>                    
                </ul>
                <!--  search form end -->                
            </div>

            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    
                    <!-- task notificatoin start --><!-- task notificatoin end -->
                    <!-- inbox notificatoin start--><!-- inbox notificatoin end -->
                    <!-- alert notification start--><!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg">
                            </span>
                            <span class="username">Jenifer Smith</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                                <a href="#"><i class="icon_profile"></i> My Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                            </li>
                            <li>
                                <a href=""><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                            <li>
                                <a href="file:///C|/Users/Admin/Downloads/NiceAdmin/documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                            <li>
                                <a href="file:///C|/Users/Admin/Downloads/NiceAdmin/documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
      </header>      
      <!--header end-->

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                      <a class="" href="courierdashboard.jsp">
                          <i class="icon_house_alt"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>Track</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="Track_Shipment.jsp">Track Shippment</a></li>                          
                          <li><a class="" href="Track_client.jsp">Track Client</a></li>
                      </ul>
                  </li>       
                  
                  <li>
                      <a class="" href="add_client.jsp">
                          <i class="icon_genius"></i>
                          <span>Add Client</span>
                      </a>
                  </li>
                  
                  <li>
                      <a class="" href="Delete_shipment.jsp">
                          <i class="icon_genius"></i>
                          <span>Delete Shipment</span>
                      </a>
                  </li>
                  
                  <li>
                      <a class="" href="Add_quotation.jsp">
                          <i class="icon_genius"></i>
                          <span>Add Quotation</span>
                      </a>
                  </li>
                  
                  <li>
                      <a class="" href="file:///C|/Users/Admin/Downloads/NiceAdmin/widgets.html">
                          <i class="icon_genius"></i>
                          <span>Upload Rate List</span>
                      </a>
                  </li>
                  
                             
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_table"></i>
                          <span>Status</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="file:///C|/Users/Admin/Downloads/NiceAdmin/basic_table.html">Order Status</a></li>
                      </ul>
                  </li>
                  
                  <li>
                      <a class="" href="myprofile.jsp">
                          <i class="icon_genius"></i>
                          <span>Edit Profile</span>
                      </a>
                  </li>
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-truck"></i> Add New Client</h3>
</div>
			</div>
              <!-- page start-->
              
              <!-- page end-->
            <div id="apDiv1">
               <form class="form-horizontal" action="" method="post">
<fieldset>

<!-- Form Name -->
<legend style="text-align:center">Client Register</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="company_name" style="font-weight:bold">Company Name</label>  
  <div class="col-md-8">
  <input id="textinput" name="company_name" type="text" placeholder="placeholder" class="form-control input-md" required size="10%">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="client_name" style="font-weight:bold">Contact Name</label>  
  <div class="col-md-8">
  <input id="textinput" name="client_name" type="text" placeholder="placeholder" class="form-control input-md" required>
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="address" style="font-weight:bold">Address</label>
  <div class="col-md-8">                     
    <textarea class="form-control" id="address" name="address">Enter Address</textarea>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput" style="font-weight:bold">Country</label>  
  <div class="col-md-8">
  <input id="textinput" name="country" type="text" placeholder="Enter Country Name" class="form-control input-md" required>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="city" style="font-weight:bold">City</label>  
  <div class="col-md-8">
  <input id="textinput" name="city" type="text" placeholder="placeholder" class="form-control input-md" required>
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput" style="font-weight:bold">Postal Code</label>  
  <div class="col-md-8">
  <input id="textinput" name="postal_code" type="text" placeholder="placeholder" class="form-control input-md" required>
    
  </div>
</div>

<!-- Prepended text-->
<div class="form-group">
  <label class="col-md-4 control-label" for="prependedtext" style="font-weight:bold">Phone No</label>
  <div class="col-md-8">
    <div class="input-group">
      <span class="input-group-addon">+91</span>
      <input id="prependedtext" name="phone_no" class="form-control" placeholder="Enter 10 Digit Mobile No" type="text" required="">
    </div>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-6">
    <button id="singlebutton" name="singlebutton" class="btn btn-block btn-primary">Submit</button>
  </div>
</div>
</fieldset>
</form>
              
</div>
          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section end -->
    <!-- javascripts -->
    <script src="js5/jquery.js"></script>
    <script src="js5/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js5/jquery.scrollTo.min.js"></script>
    <script src="js5/jquery.nicescroll.js" type="text/javascript"></script><!--custome script for all page-->
    <script src="js5/scripts.js"></script>


  </body>
</html>
