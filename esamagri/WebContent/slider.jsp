<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Untitled Document</title>

<style type="text/css">

body { padding-top: 0px; }
#myCarousel .nav a small {
    display:block;
}
#myCarousel .nav {
	background:#eee;
}
#myCarousel .nav a {
    border-radius:0px;
}


#custom-search-input{
    padding: 3px;
    border: solid 1px #E4E4E4;
    border-radius: 6px;
    background-color: #fff;
}

#custom-search-input input{
    border: 0;
    box-shadow: none;
}

#custom-search-input button{
    margin: 2px 0 0 0;
    background: none;
    box-shadow: none;
    border: 0;
    color: #666666;
    padding: 0 8px 0 10px;
    border-left: solid 1px #ccc;
}

#custom-search-input button:hover{
    border: 0;
    box-shadow: none;
    border-left: solid 1px #ccc;
}

#custom-search-input .glyphicon-search{
    font-size: 23px;
}



</style>

<script type="text/javascript">

$(document).ready( function() {
    $('#myCarousel').carousel({
		interval:   4000
	});
	
	var clickEvent = false;
	$('#myCarousel').on('click', '.nav a', function() {
			clickEvent = true;
			$('.nav li').removeClass('active');
			$(this).parent().addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!clickEvent) {
			var count = $('.nav').children().length -1;
			var current = $('.nav li.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.nav li').first().addClass('active');	
			}
		}
		clickEvent = false;
	});
});

</script>
</head>

<body >


<div class="container-fluid">
<div class="row">
<div class="col-md-3">
<jsp:include page="menubar.jsp"></jsp:include>
</div>

<div class="col-md-8" style="padding-top: 57px;">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
      
        <div class="item active">
          <img src="image/onlinesabjiwala-home-banner-3.png">
           <div class="carousel-caption">
            
          </div>
        </div><!-- End Item -->
 
         <div class="item">
          <img src="image/Bakery_applications.png">
           <div class="carousel-caption">
            
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="image/fruit-banner-393928_l.png">
           <div class="carousel-caption">
           
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="image/photo_5a.png">
           <div class="carousel-caption">
            
          </div>
        </div><!-- End Item -->
                
      </div><!-- End Carousel Inner -->


    	<ul class="nav nav-pills nav-justified">
          <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">Fresh & Best<small>Vegetables</small></a></li>
          <li data-target="#myCarousel" data-slide-to="1"><a href="#">Snacks &<small>Confectionery</small></a></li>
          <li data-target="#myCarousel" data-slide-to="2"><a href="#">Fresh & Healthy<small>Fruits</small></a></li>
          <li data-target="#myCarousel" data-slide-to="3"><a href="#">Raw<small>Materials</small></a></li>
        </ul>


    </div><!-- End Carousel -->
    </div>
    <div class="col-md-4">
    <img>
    </div>
    </div>
</div>


</body>
</html>
