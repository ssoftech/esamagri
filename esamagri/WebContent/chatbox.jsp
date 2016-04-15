<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css2/chatbox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script type="text/javascript">

$(function(){
	$("#addClass").click(function () {
	  $('#sidebar_secondary').addClass('popup-box-on');
	    });
	  
	    $("#removeClass").click(function () {
	  $('#sidebar_secondary').removeClass('popup-box-on');
	    });
	})
</script>
</head>
<body>

<jsp:include page="nav.jsp"></jsp:include>
<div class="container text-center">
    <div class="row">
		<h2 style="color: rgb(24, 157, 14);"><i aria-hidden="true" class="fa fa-whatsapp"></i> Whatsapp Chat Box POPUP</h2>
        <h4 style="font-size: 14px; line-height: 22px;">#simple #html #css #User #Profile #jquery #Social #contact<br> #accordion #popup #chat #messages #jquery</h4>
        <div class="round hollow text-center">
        <a href="#" class="open-btn" id="addClass"><i class="fa fa-whatsapp" aria-hidden="true"></i> Click Here</a>
        </div>
        
        <hr>
        
        MORE
        
         <a target="_blank" href="http://bootsnipp.com/snippets/z4P39"> Creative User Profile  </a>, <a target="_blank" href="http://bootsnipp.com/snippets/GXzyP">Open in chat (popup-box chat-popup)</a>
	</div>
</div>


<aside id="sidebar_secondary" class="tabbed_sidebar ng-scope chat_sidebar">

<div class="popup-head">
    			<div class="popup-head-left pull-left"><a Design and Developmenta title="Gurdeep Osahan (Web Designer)" target="_blank" href="https://web.facebook.com/iamgurdeeposahan">
<img class="md-user-image" alt="Gurdeep Osahan (Web Designer)" title="Gurdeep Osahan (Web Designer)" src="https://scontent.xx.fbcdn.net/hphotos-xtf1/v/t1.0-9/11986965_571879149619846_4942737019629149212_n.jpg?oh=280b3fd238a5308f8e5c7ea5ba33c48e&oe=56FB8357" title="Gurdeep Osahan (Web Designer)" alt="Gurdeep Osahan (Web Designer)">
<h1>Gurdeep Osahan</h1><small><br> <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span> Web Designer</small></a></div>
					  <div class="popup-head-right pull-right">
                      <button class="chat-header-button" type="button"><i class="glyphicon glyphicon-facetime-video"></i></button>
						<button class="chat-header-button" type="button"><i class="glyphicon glyphicon-earphone"></i></button>
                        <div class="btn-group gurdeepoushan">
    								  <button class="chat-header-button" data-toggle="dropdown" type="button" aria-expanded="false">
									   <i class="glyphicon glyphicon-paperclip"></i> </button>
									  <ul role="menu" class="dropdown-menu pull-right">
										<li><a href="#"><span class="glyphicon glyphicon-picture" aria-hidden="true"></span> Gallery</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-camera" aria-hidden="true"></span> Photo</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span> Video</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-headphones" aria-hidden="true"></span> Audio</a></li>
                                        <li><a href="#"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Location</a></li>
                                        <li><a href="#"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Contact</a></li>
									  </ul>
						</div>
						
						<button data-widget="remove" id="removeClass" class="chat-header-button pull-right" type="button"><i class="glyphicon glyphicon-remove"></i></button>
                      </div>
			  </div>

<div id="chat" class="chat_box_wrapper chat_box_small chat_box_active" style="opacity: 1; display: block; transform: translateX(0px);">
                        <div class="chat_box touchscroll chat_box_colors_a">
                            <div class="chat_message_wrapper">
                                <div class="chat_user_avatar">
                                    <a href="https://web.facebook.com/iamgurdeeposahan" target="_blank" >
                                    <img alt="Gurdeep Osahan (Web Designer)" title="Gurdeep Osahan (Web Designer)"  src="https://z-n.ak.fbcdn.net/sphotos-b.ak/hphotos-ak-xtp1/v/t1.0-9/10672068_611175545690206_6037235061660836500_n.jpg?oh=95d141c46858a48a31b0753ffa486aef&oe=57077635&__gda__=1464465923_f873c14b7338c1071034f7cf62e7ddb3" class="md-user-image">
                                    </a>
                                </div>
                                <ul class="chat_message">
                                    <li>
                                        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio, eum? </p>
                                    </li>
                                    <li>
                                        <p> Lorem ipsum dolor sit amet.<span class="chat_message_time">13:38</span> </p>
                                    </li>
                                </ul>
                            </div>
                            <div class="chat_message_wrapper chat_message_right">
                                <div class="chat_user_avatar">
                                <a href="https://web.facebook.com/iamgurdeeposahan" target="_blank" >
                                    <img alt="Gurdeep Osahan (Web Designer)" title="Gurdeep Osahan (Web Designer)" src="https://scontent.xx.fbcdn.net/hphotos-xtf1/v/t1.0-9/11986965_571879149619846_4942737019629149212_n.jpg?oh=280b3fd238a5308f8e5c7ea5ba33c48e&oe=56FB8357" class="md-user-image">
                                </a>
                                </div>
                                <ul class="chat_message">
                                    <li>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem delectus distinctio dolor earum est hic id impedit ipsum minima mollitia natus nulla perspiciatis quae quasi, quis recusandae, saepe, sunt totam.
                                            <span class="chat_message_time">13:34</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                            <div class="chat_message_wrapper">
                                <div class="chat_user_avatar">
                                <a href="https://web.facebook.com/iamgurdeeposahan" target="_blank" >
                                    <img alt="Gurdeep Osahan (Web Designer)" title="Gurdeep Osahan (Web Designer)" src="https://z-n.ak.fbcdn.net/sphotos-b.ak/hphotos-ak-xtp1/v/t1.0-9/10672068_611175545690206_6037235061660836500_n.jpg?oh=95d141c46858a48a31b0753ffa486aef&oe=57077635&__gda__=1464465923_f873c14b7338c1071034f7cf62e7ddb3" class="md-user-image">
                                </a>
                                </div>
                                <ul class="chat_message">
                                    <li>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque ea mollitia pariatur porro quae sed sequi sint tenetur ut veritatis.https://www.facebook.com/iamgurdeeposahan
                                            <span class="chat_message_time">23 Jun 1:10am</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                            <div class="chat_message_wrapper chat_message_right">
                                <div class="chat_user_avatar">
                                <a href="https://web.facebook.com/iamgurdeeposahan" target="_blank" >
                                    <img alt="Gurdeep Osahan (Web Designer)" title="Gurdeep Osahan (Web Designer)" src="https://scontent.xx.fbcdn.net/hphotos-xtf1/v/t1.0-9/11986965_571879149619846_4942737019629149212_n.jpg?oh=280b3fd238a5308f8e5c7ea5ba33c48e&oe=56FB8357" class="md-user-image">
                                </a>
                                </div>
                                <ul class="chat_message">
                                    <li>
                                        <p> Lorem ipsum dolor sit amet, consectetur. </p>
                                    </li>
                                    <li>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                            <span class="chat_message_time">Friday 13:34</span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
<div class="chat_submit_box">
    <div class="uk-input-group">
        <div class="gurdeep-chat-box">
        <span style="vertical-align: sub;" class="uk-input-group-addon">
        <a href="#"><i class="fa fa-smile-o"></i></a>
        </span>
        <input type="text" placeholder="Type a message" id="submit_message" name="submit_message" class="md-input">
        <span style="vertical-align: sub;" class="uk-input-group-addon">
        <a href="#"><i class="fa fa-camera"></i></a>
        </span>
        </div>
    
    <span class="uk-input-group-addon">
    <a href="#"><i class="glyphicon glyphicon-send"></i></a>
    </span>
    </div>
</div>
        
        </div>


</body>
</html>