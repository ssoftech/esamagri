<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
<title>Insert title here</title>

<style type="text/css">

 
.dropdown-menu > li.kopie > a {
    padding-left:5px;
}
 
.dropdown-submenu {
    position:relative;
}
.dropdown-submenu>.dropdown-menu {
   top:0;left:100%;
   margin-top:-6px;margin-left:-1px;
   -webkit-border-radius:0 6px 6px 6px;-moz-border-radius:0 6px 6px 6px;border-radius:0 6px 6px 6px;
 }
  
.dropdown-submenu > a:after {
  border-color: transparent transparent transparent #333;
  border-style: solid;
  border-width: 5px 0 5px 5px;
  content: " ";
  display: block;
  float: right;  
  height: 0;     
  margin-right: -10px;
  margin-top: 5px;
  width: 0;
}
 
.dropdown-submenu:hover>a:after {
    border-left-color:#555;
 }

.dropdown-menu > li > a:hover, .dropdown-menu > .active > a:hover {
  text-decoration: underline;
}  
  
@media (max-width: 767px) {

  .navbar-nav  {
     display: inline;
  }
  .navbar-default .navbar-brand {
    display: inline;
  }
  .navbar-default .navbar-toggle .icon-bar {
    background-color: #fff;
  }
  .navbar-default .navbar-nav .dropdown-menu > li > a {
    color: red;
    background-color: #ccc;
    border-radius: 4px;
    margin-top: 2px;   
  }
   .navbar-default .navbar-nav .open .dropdown-menu > li > a {
     color: #333;
   }
   .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
   .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
     background-color: #ccc;
   }

   .navbar-nav .open .dropdown-menu {
     border-bottom: 1px solid white; 
     border-radius: 0;
   }
  .dropdown-menu {
      padding-left: 10px;
  }
  .dropdown-menu .dropdown-menu {
      padding-left: 20px;
   }
   .dropdown-menu .dropdown-menu .dropdown-menu {
      padding-left: 30px;
   }
   li.dropdown.open {
    border: 0px solid red;
   }

}
 
@media (min-width: 768px) {
  ul.nav li:hover > ul.dropdown-menu {
    display: block;
  }
  #navbar {
    text-align: center;
  }
}  


</style>
</head>
<body>

<div id="navbar">    
  <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
              <a class="navbar-brand" href="#"></a>
            </div>
            
            <div class="collapse navbar-collapse" id="navbar-collapse-1">
                <ul class="nav navbar-nav">
                  <li><a href="#">Home</a></li>
                    <!-- <li><a href="#">Link</a></li>  -->
                  
                    <li class="dropdown">
                      <a href="show_category.jsp?category=ELECTRONICS" class="dropdown-toggle" data-toggle="dropdown">Daily Needs <b class="caret"></b></a> 
                      
                        <ul class="dropdown-menu">
                                                   
                            <li class="dropdown dropdown-submenu"><a href="show_category.jsp?category=mobile" class="dropdown-toggle" data-toggle="dropdown">Mobile</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="show_category.jsp?category=mobile">Smartphone</a></li>
									<li><a href="#">Latest Release</a></li>
									                                                                      
								</ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Computer</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Laptop</a></li>
                        <li><a href="#">Printers &amp Ink </a></li>
                        <li><a href="#">Storage </a></li>
                        <li><a href="#">Routers &amp; Data cards </a></li>
                        <li><a href="#">Desktop</a></li>
                        <li><a href="show_category.jsp?category=ELECTRONICS">Computer Accessories</a></li>
									                                                                      
								</ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Television</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Full HD TVs</a></li>
									<li><a href="#">Smart TVs</a></li>
									                                                                      
								</ul>
							</li>
                          
                          <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Large Appliances</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Air Conditioners</a></li>
                        <li><a href="#">Air Coolers </a></li>
                        <li><a href="#">Wasing Machine </a></li>
                        <li><a href="#">Refrigerators  </a></li>
                        <li><a href="#">Microwave &amp; OTGs </a></li>
                        </ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Home Appliances</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Vaccum Cleaners</a></li>
                        <li><a href="#">Irons</a></li>
                        <li><a href="#">Home Security</a></li>
                        <li><a href="#">Sewing Machines</a></li>
                        <li><a href="#">Air Purifiers</a></li>
                        </ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Kitchen Appliances</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Juicer,Mixer Grinders</a></li>
                        <li><a href="#">Gas Stoves</a></li>
                        <li><a href="#">Chimneys</a></li>
                        <li><a href="#">Induction Cooktops</a></li>
                        <li><a href="#">Food Processors</a></li>
                        </ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Gromming Appliances</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Trimmers</a></li>
                        <li><a href="#">Shavers</a></li>
                        <li><a href="#">Hair Dryers </a></li>
                        <li><a href="#">Hair Straighteners</a></li>
                        <li><a href="#">Facial Care</a></li>
                        </ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Camera</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Digital Cameras</a></li>
                        <li><a href="#">DSLRs</a></li>
                        <li><a href="#">Camcorders </a></li>
                        <li><a href="#">Camera Lenses</a></li>
                        <li><a href="#">Selfie Sticks</a></li>
                        <li><a href="#">Digital Photo Frames</a></li>
                        </ul>
							</li>
                          
                      </ul>
                    </li>
                    
                    
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men's Fashions <b class="caret"></b></a> 
                      
                        <ul class="dropdown-menu">
                                                   
                            <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Footwear</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Sports Shoes</a></li>
									<li><a href="#">Casual Shoes</a></li>
									<li><a href="#">Formal Shoes</a></li>
									<li><a href="#">Sneakers</a></li>
									<li><a href="#">Floater Sandals</a></li>
									<li><a href="#">Loafers</a></li>
									<li><a href="#">Sandals</a></li>
									<li><a href="#">Flip-Flops</a></li>
									                                                                      
								</ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Bags & Luggage</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Backpacks</a></li>
                        <li><a href="#">Laptop Bags </a></li>
                        <li><a href="#">Luggage & Suitcases </a></li>
                        <li><a href="#">Office Bags </a></li>
                                                            
								</ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Cloths</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Shirts</a></li>
									<li><a href="#">T-Shirts & Polos</a></li>
									<li><a href="#">Jeans</a></li>
									<li><a href="#">Trousers & Chinos</a></li>
									<li><a href="#">Jackets</a></li>
									<li><a href="#">Sweaters</a></li>
									<li><a href="#">Suits & Blazers</a></li>
									<li><a href="#">Innerwear & Sleepwear</a></li>
									<li><a href="#">Sportswear</a></li>
									<li><a href="#">Kurta, Pyjama & Sherwanis</a></li>
									<li><a href="#">Suitings & Shirting</a></li>
									<li><a href="#">Shorts & 3/4ths</a></li>
									                                                                      
								</ul>
							</li>
                          
                          <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Grooming</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Razor, Catridges & Brushes</a></li>
                        <li><a href="#">Shaving Creams & Gels</a></li>
                        <li><a href="#">Aftershave</a></li>
                        <li><a href="#">Grooming Combos</a></li>
                         <li><a href="#">Trimmers</a></li>
                        <li><a href="#">Shavers</a></li>
                        
                               </ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Watches</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Men's Watches</a></li>
                        <li><a href="#">Smart Watches</a></li>
                        <li><a href="#">Couple Watches</a></li>
                        
                        </ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Accessories</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Wallets</a></li>
                        <li><a href="#">Belts</a></li>
                        <li><a href="#">Gift Sets</a></li>
                        <li><a href="#">Card holders</a></li>
                        <li><a href="#">Handkerchiefs</a></li>
                        </ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Fragrances</a>
								<ul class="dropdown-menu">
                                    
						<li><a href="#">Perfumes</a></li>
                        <li><a href="#">Deodorants</a></li>
                         <li><a href="#">Gift Sets</a></li>
                       </ul>
                </li>
						<li class=""><a href="#" class="dropdown-toggle" data-toggle="dropdown">Designer Wear</a></li>
                          <li class=""><a href="#" class="dropdown-toggle" data-toggle="dropdown">Eyeware</a></li>
                      </ul>
                    </li>
                    
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Women's Fashions <b class="caret"></b></a> 
                      
                        <ul class="dropdown-menu">
                                                   
                            <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Ethnic Wear</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Sarees</a></li>
                        <li><a href="#">Anarkalis</a></li>
                        <li><a href="#">Dress Material</a></li>
                        <li><a href="#">Semi Stitched Salwar Suits</a></li>
                        <li><a href="#">Stitched Salwar Suits</a></li>
                        <li><a href="#">Kurtis</a></li>
                        <li><a href="#">Lehengas</a></li>
                        <li><a href="#">Salwars & Churidars</a></li>
									                                                                      
								</ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Footwear</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Sports Shoes</a></li>
                        <li><a href="#">Heels</a></li>
                        <li><a href="#">Casual Shoes</a></li>
                        <li><a href="#">Flats & Sandals</a></li>
                                                            
								</ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Western Wear</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Tops & Tunics</a></li>
                        <li><a href="#">Tees & Polos</a></li>
                        <li><a href="#">Shirts</a></li>
                        <li><a href="#">Dresses</a></li>
                        <li><a href="#">Jeans</a></li>
                        <li><a href="#">Trousers & Palazzos</a></li>
                        <li><a href="#">Leggings & Tights</a></li>
                        <li><a href="#">Innerwear & Nightwear</a></li>
                        <li><a href="#">Sportswear</a></li>
                        <li><a href="#">Winterwear</a></li>
									                                                                      
								</ul>
							</li>
                          
                          <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Handbags & Clutches</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Handbags</a></li>
                        <li><a href="#">Clutches</a></li>
                        <li><a href="#">Wallets</a></li>
                        
                              </ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Eyewear</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Sunglasses</a></li>
                        <li><a href="#">Spectacle Frames</a></li>
                        
                        </ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Jewellery</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Earrings</a></li>
                        <li><a href="#">Bangles & Bracelets</a></li>
                        <li><a href="#">Pendants & Sets</a></li>
                        <li><a href="#">Necklaces & Sets</a></li>
                        <li><a href="#">Rings</a></li>
                        </ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Fragrances</a>
								<ul class="dropdown-menu">
                                    
						<li><a href="#">Perfumes</a></li>
                        <li><a href="#">Deodorants</a></li>
                         
                       </ul>
                </li>
						
                          <li class=""><a href="#" data-toggle="dropdown">Designer Wear</a></li>
                          
                      </ul>
                    </li>
                    
                    
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Kid's Fashions <b class="caret"></b></a> 
                      
                        <ul class="dropdown-menu">
                                                   
                            <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Toys</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Electronic Toys</a></li>
                        <li><a href="#">Soft Toys</a></li>
                        <li><a href="#">Puzzles & Cubes</a></li>
                        <li><a href="#">Educational Toys</a></li>
                        <li><a href="#">Toddler & Baby Toys</a></li>
                        <li><a href="#">Dolls & Doll Houses</a></li>
                        <li><a href="#">Indoor Games</a></li>
                        <li><a href="#">Outdoor & Sports</a></li>
									                                                                      
								</ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Girls Clothing</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Frocks & Dresses</a></li>
                        <li><a href="#">Tops, Tees & Shirts</a></li>
                        <li><a href="#">Ethnicwear</a></li>
                        <li><a href="#">Tops & Bottom Sets</a></li>
                        <li><a href="#">Shorts, Skirts & Capris</a></li>
                                                            
								</ul>
							</li>
							
							<li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Boys Clothing</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">T-shirts & Polos</a></li>
                        <li><a href="#">Top & Bottom Combos</a></li>
                        <li><a href="#">Bottom Wear</a></li>
                        <li><a href="#">Jeans, Pants & Cargos</a></li>
                        <li><a href="#">Jeans</a></li>
                        <li><a href="#">Shirts</a></li>
                        <li><a href="#">Kurtas, Pyjamas & Dhotis</a></li>
                        									                                                                      
								</ul>
							</li>
                          
                          <li class="dropdown dropdown-submenu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Baby Care</a>
								<ul class="dropdown-menu">
                                    
									<li><a href="#">Bath, Skin & Health care</a></li>
                        <li><a href="#">Diapers & Potty Training</a></li>
                        <li><a href="#">Baby Bedding</a></li>
                        
                              </ul>
							</li>
						</ul>
                    </li>
                  
                  
                  <li class="dropdown">
                      <a href="grocerry.jsp?category=Grocerry Store">Grocerry<b class="caret"></b></a> 
                      
        
                    </li>
                   <li class="last"><a href="#">Contacts</a></li> 
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
</div>


</body>
</html>