<%@page import="cart.Dao_Cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="cart.Cart"%>
<%@page import="cart.Shopping_Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    
    <link rel="stylesheet" href="style.css">
    
  
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  </style>

      
    <script language="JavaScript" type="text/javascript">
    
    function track() {
		 
		  alert(product_id+"product_id"+"color_id"+color_id+"quantity"+quantity)
		  var msg=document.getElementById("abc").value;
		  
		  if(msg==null)
			{
			  
			 
			  alert("out of stock");
			 
			
			
			  
			}
		}
    
    
    
    
   

	function show_Date()
	{
		
		document.getElementById("REVIEW_DATE").value=new Date();
		
		
	}
	
	function select_seller_price(str,str1)
	{
		var xhttp;
		
		 var url="Select_Price.jsp?Seller_Name="+str+"&Product_Id="+str1;
	
		  if (window.XMLHttpRequest) {
		    // code for modern browsers
		    xhttp = new XMLHttpRequest();
		    } else {
		    // code for IE6, IE5
		    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		  }
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		      document.getElementById("price").innerHTML = xhttp.responseText;
		      
		   
		    }
		  };
		  xhttp.open("GET", url, true);
		  xhttp.send(); 
		}

	
	
	
	
	
	</script>   
    
    
    
  
  <script type="text/javascript">
 
  
  
  
  function quan(Product_Id,cnt,price,q,sh_charge,email)
  {
	  
	   var url="quantity_change.jsp?Product_Id="+Product_Id+"&quantity="+q;
		
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    	   document.getElementById("qq").innerHTML = xhttp.responseText;
	    	   
	    	 show_alert(Product_Id,cnt,price,q,sh_charge,email);
	    	 
	    }
	  };
	  xhttp.open("GET", url, true);
	  xhttp.send();  
  }

   function show_alert(Product_Id,cnt,price,q,sh_charge,email)
  {
	 
	  var msg=document.getElementById("actual").value;
	  if(msg=="no")
	{
	  
	  
	  alert("you can not select that much product ");
	 
	  total(Product_Id,cnt,price,1,sh_charge,email);
	  document.getElementById("quantity"+cnt).value=1;
	  
	}
	  if(msg=="yes")
	{
	 
	  total(Product_Id,cnt,price,q,sh_charge,email);
	}
	  
	  
	  
  }  
   function total(Product_Id,cnt,price,q,sh_charge,email){

		 var xhttp;
		

		 var url="Registered_Cart_total_Change.jsp?id="+Product_Id+"&price="+price+"&quantity="+q+"&cnt="+cnt+"&email="+email;
	
		  if (window.XMLHttpRequest) {
		    // code for modern browsers
		    xhttp = new XMLHttpRequest();
		    } else {
		    // code for IE6, IE5
		    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		  }
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		      document.getElementById("total"+cnt).innerHTML = xhttp.responseText;
		      subtotal(Product_Id,cnt,sh_charge,email);
		      
		   
		    }
		  };
		  xhttp.open("GET", url, true);
		  xhttp.send(); 
		} 
   
   function subtotal(Product_Id,cnt,sh_charge,email){

		 var xhttp;
		
		 var url="Registered_Cart_subtotal_Change.jsp?id="+Product_Id+"&cnt="+cnt+"&sh_charge="+sh_charge+"&email="+email;
	
		  if (window.XMLHttpRequest) {
		    // code for modern browsers
		    xhttp = new XMLHttpRequest();
		    } else {
		    // code for IE6, IE5
		    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		  }
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		      document.getElementById("subtotal"+cnt).innerHTML = xhttp.responseText;
		      order_total(email);
		    }
		  };
		  xhttp.open("GET", url, true);
		  xhttp.send(); 
		 
		
		}
   
   function order_total(email)
	{
		//var q=document.f.quantity.value;
		//var q=5;
		//var url="total.jsp?val="+v+"&id="+i+"&pr="+price+"&n="+n;
		var url="Registered_Order_Total.jsp?email="+email;
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    document.getElementById("grand_total").innerHTML=xmlhttp.responseText;
	    }
	  }
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
	}  
   
   function select_seller_price(str,str1)
	{
		var xhttp;
		
		 var url="Select_Price.jsp?Seller_Name="+str+"&Product_Id="+str1;
	
		  if (window.XMLHttpRequest) {
		    // code for modern browsers
		    xhttp = new XMLHttpRequest();
		    } else {
		    // code for IE6, IE5
		    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		  }
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		      document.getElementById("price").innerHTML = xhttp.responseText;
		      
		   
		    }
		  };
		  xhttp.open("GET", url, true);
		  xhttp.send(); 
		}
	
	
   
   
  </script>
 

  </head>
  <body>
 <jsp:include page="nav.jsp"></jsp:include>
 <jsp:include page="searchbox.jsp"></jsp:include>
<jsp:include page="collapsible_menu.jsp"></jsp:include>
 
 <div class="container">
 <% String PRODUCT_NAME="";
   String seller="";
   int product_id=0;
   %>
 

   <div id="qq"></div>

  <!--   <div class="single-product-area" align="center">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                </div>     -->
                <div class="col-md-12" style="padding-top: 70px;">
                    <div class="product-content-right">
                        <div class="woocommerce">
                         <form method="post" action="#">
                                <table cellspacing="0" class="shop_table cart">
                                    <thead>
                                        <tr>
                                            <th class="product-remove">&nbsp;</th>
                                            <th class="product-thumbnail">&nbsp;</th>
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Quantity</th>
                                           
                                            <th class="product-quantity">Price</th>
                                            
											<th class="product-name">DELIVERY DETAILS</th>
                                            <th class="product-subtotal">Total</th>
                                        </tr>
                                    </thead>
	<% 
	String email2=(String)session.getAttribute("email");
	System.out.println("cccccc");
	ArrayList<Shopping_Cart> cart_list=(ArrayList<Shopping_Cart>)Dao_Cart.View_Cart(email2);
	session.setAttribute("cart_list",cart_list);
	  Iterator<Shopping_Cart> it=cart_list.iterator();
	  int cnt=0;
	 
	  while(it.hasNext())
	  {
		  Shopping_Cart ob=it.next();
		 seller =ob.getSeller();
	  product_id=ob.getProduct_id();
	%>                           
                                 <tbody >
                                        <tr class="cart_item" width="500px" height="145">
                                            <td class="product-remove" width="500" height="145">
                                               <a href="remove_buy?product_id=<%=ob.getProduct_id()%>"  title="Remove this item"  class="remove">Remove</a><hr>
                                            </td>

                                            <td class="product-thumbnail"width="500%" height="145">
                                                <a href="singleproduct.jsp"><img src="Image2?id=<%=ob.getProduct_id()%>" width="500px" height="145" alt="poster_1_up" class="shop_thumbnail" ></a>
                                            </td>

                                            <td class="product-name" width="500px" height="145">
                                           
                                             <%=ob.getProduct_name()%>
                                             <%=ob.getShort_description()%>
                                             Seller:<%=ob.getSeller() %>
                                            </td>

                                           
                                            <%cnt=cnt+1;%>
                                            <td class="product-quantity" width="500px" height="145">
                                                <div class="quantity buttons_added">
                                                   <!--  <input type="button" class="minus" value="-">
                                                    <input type="number" size="4" class="input-text qty text" title="Qty" value="1" min="0" step="1">
                                                    <input type="button" class="plus" value="+"> -->
                                                  <select name="quantity" id="quantity<%=cnt%>"  onchange="quan(<%=ob.getProduct_id()%>,<%=cnt%>,<%=ob.getPrice()%>,this.value,<%=ob.getShipping_charge()%>,'<%=email2%>')">
                                                    <option selected ><%=ob.getQuantity()%></option>
                                                    <% for(int i=1;i<=10;i++){
                                                    if(i!=ob.getQuantity()){%>
                                                    <option><%=i%></option>
                                                    <%}} %>
                                                    </select>
                                                    
                                                </div>
                                            </td>
                                            
                                             <td class="product-price" width="500px" height="145">
                                                <span id="total<%=cnt%>" class="amount"><%=ob.getTotal_price()%></span> 
                                            </td>
											<td class="product-name" width="500px" height="145">
                                           Shipping Charge:  <%=ob.getShipping_charge() %>
                                             
                                            </td>
                                            <td class="product-subtotal" width="500px" height="145">
                                            
                                                <span id="subtotal<%=cnt%>" class="amount"><%=ob.getSubtotal()%></span> 
                                            </td>
                                        </tr>
                                        <%} %>
                                        
                                        <tr>
                                            <td class="actions" colspan="6">
                                                    <div class="cart_totals ">
                               

                                <table cellspacing="0">
                                    <tbody>
                                        

                                        <tr class="order-total">
                                            <th>Order Total</th>
                                            <td><strong><span id="grand_total" class="amount">
                                            <% double order_total_price=Dao_Cart.getOrder_Total_ByEmail(email2);%>
                                            <%=order_total_price%></span></strong> </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            
                            <div>
                                            <span style=margin-left:50px><a href="index.jsp" style="margin-left:-2px">Continue Shopping</a></span>
                                         
                               <span style=margin-left:50px><a href="retailer_product.jsp?seller=<%=seller %>" style="margin-left:-2px">Continue Shopping with same seller</a></span>           
                                         
                                        
                                        
                          <span style=margin-left:50px><a href="Place_Order.jsp?email=<%=email2%>&count=<%=cnt%>&order_total_price=<%=order_total_price%>">Place Order</a></span>
                                           </div>
                                            </td>
                                        </tr>
                                      
                                        
                                        
                                    </tbody>
                                </table>
                            </form>

                            <div class="cart-collaterals">

                            </div>
                        </div>                        
                    </div>                    
                </div>
            </div>
        <!-- </div>
    </div>
</div> -->
<jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>
    
  </body>
</html>