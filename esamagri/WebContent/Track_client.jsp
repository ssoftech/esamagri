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

    <title>E-Courier/Client-Track </title>

    <!-- Bootstrap CSS -->    
    <link href="css4/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css4/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css4/elegant-icons-style.css" rel="stylesheet" />
    <link href="css4/font-awesome.min.css" rel="stylesheet" />    
    
    <!-- owl carousel -->
    <link rel="stylesheet" href="css4/owl.carousel.css" type="text/css">
	<link href="css4/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
	
	<link href="css4/widgets.css" rel="stylesheet">
    <link href="css4/style.css" rel="stylesheet">
    <link href="css4/style-responsive.css" rel="stylesheet" />
	<link href="css4/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <style type="text/css">
    #apDiv1 {
	position: absolute;
	width: 403px;
	height: 151px;
	z-index: 1;
	top: 647px;
	left: 503px;
	margin-top:-30%;
	margin-left:5%;
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
					<h3 class="page-header"><i class="fa fa-truck"></i> Track Client</h3>
</div>
			</div>
              <!-- page start-->
              
              <!-- page end-->
            <div id="apDiv1">
            <form action="#" method="post">
              <table width="401" height="79" cellpadding="2" cellspacing="1">
                <tr>
                  <td width="121" height="32" scope="col">Client Name</td>
                  <td width="267" scope="col"><input class="form-control" id="inputdefault" type="text"></td>
                </tr>
                
                <tr><br>
      <td colspan="5" align="center">
<input type="submit" class="btn btn-primary btn-primary" value="Submit"></td>
    </tr>
    
              </table>
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
