<%@page import="cart.Dao_Cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="cart.Cart"%>
<%@page import="cart.Shopping_Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Google Fonts -->
    
    <link rel="stylesheet" href="style.css">
    
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
		
		 var url="Registered_buy_total_Change.jsp?id="+Product_Id+"&price="+price+"&quantity="+q+"&cnt="+cnt+"&email="+email;
	
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
		
		 var url="Registered_buy_subtotal_Change.jsp?id="+Product_Id+"&cnt="+cnt+"&sh_charge="+sh_charge+"&email="+email;
	
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
		      order_total(email,Product_Id);
		    }
		  };
		  xhttp.open("GET", url, true);
		  xhttp.send(); 
		 
		
		}
	function order_total(email,product_id)
	{
		//var q=document.f.quantity.value;
		//var q=5;
		//var url="total.jsp?val="+v+"&id="+i+"&pr="+price+"&n="+n;
		var url="Registered_buy_OrderTotal.jsp?email="+email+"&product_id="+product_id;
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
	function login(showhide) {
		if (showhide == "show") {
			document.getElementById('popupbox').style.visibility = "visible";
		} else if (showhide == "hide") {
			document.getElementById('popupbox').style.visibility = "hidden";
		}
	}

	function show_Date()
	{
		
		document.getElementById("REVIEW_DATE").value=new Date();
		
		
	}
  </script>
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="searchbox.jsp"></jsp:include>
	<div class="container">	
		
 <table cellspacing="0" class="shop_table cart">
<div><%
     int product_id=Integer.parseInt(request.getParameter("product_id"));
      String email=(String)session.getAttribute("email");
      int count=1; 
      
if(email==null)
{
	
	response.sendRedirect("log_in2.jsp?product_id="+product_id);
}
else{
      	  String address=Dao_Cart.getAddress(email);
      	  System.out.println("aaaa");
      	 
      	  %>

 <div align="center">
     <b>1. Login Id-       &nbsp; &nbsp;  &nbsp;      <%=email%></b><br><br>
    
     <b>2. Address-    &nbsp; &nbsp;  &nbsp;      <%=address%></b><br><br>
     <b>3. ORDER SUMMARY <%=count%> item</b>     
              </div><br>
 


</div> </table>

<br><br>
<div id="qq"></div>
 <div class="col-md-12">
                    <div class="product-content-right">
                        <div class="woocommerce">
                         <form method="post" action="LoginServlet3">
                                <table cellspacing="0" class="shop_table cart">
                                    <thead>
                                        <tr>
                                            
                                            <th class="product-thumbnail">&nbsp;</th>
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Quantity</th>
                                            <th class="product-quantity">Price</th>
											<th class="product-name">DELIVERY DETAILS</th>
                                            <th class="product-subtotal">Total</th>
                                        </tr>
                                    </thead>
	<% 
	int cnt=0;
	Dao_Cart.select_buy(product_id,email);
	Shopping_Cart ob=(Shopping_Cart)Dao_Cart.View_buy_product_id(email, product_id);
	%>
                           
                                    <tbody>
                                        <tr class="cart_item">
                                            

                                            <td class="product-thumbnail">
                                                <a href="singleproduct.jsp"><img src="Image2?id=<%=product_id%>" width="145" height="145" alt="poster_1_up" class="shop_thumbnail" ></a>
                                            </td>

                                            <td class="product-name">
                                             <%=ob.getProduct_name()%>
                                             
                                             <%=ob.getShort_description()%>
                                             Seller:<%=ob.getSeller() %>
                                            </td>

                                            <% cnt=cnt+1;%>
                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                   
                                                  <select name="quantity" id="quantity<%=cnt%>" onChange="quan(<%=ob.getProduct_id()%>,<%=cnt%>,<%=ob.getPrice()%>,this.value,<%=ob.getShipping_charge()%>,'<%=email%>');">
                                                    <option selected><%=ob.getQuantity()%></option>
                                                    <% for(int i=1;i<=10;i++){
                                                    if(i!=ob.getQuantity()){%>
                                                    <option><%=i%></option>
                                                    <%}} %>
                                                    </select>
                                                    
                                                </div>
                                            </td>
                                             <td class="product-price">
                                                <span id="total<%=cnt%>" class="amount"><%=ob.getTotal_price()%></span> 
                                            </td>
											<td class="product-name">
                                            Shipping Charge: <%=ob.getShipping_charge() %>
                                             
                                            </td>
                                            <td class="product-subtotal">
                                            
                                                <span id="subtotal<%=cnt%>" class="amount"><%=ob.getSubtotal()%></span> 
                                            </td>
                                        </tr>
                                    
                                        
                                        <tr>
                                            <td class="actions" colspan="6">
                                                
                                                 
                                                   
                                                   <a href="Payment_Method_buy.jsp?email=<%=email%>&product_id=<%=product_id%>&product_name=<%=ob.getProduct_name()%>">Continue</a>
                                                       <div class="cart_totals ">
                               

                                <table cellspacing="0">
                                    <tbody>
                                        

                                        <tr class="order-total">
                                            <th>Order Total</th>
                                            <td><strong><span id="grand_total" class="amount">
                       
                                            <%=ob.getSubtotal()%></span></strong> </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                                           
                                              
                                            </td>
                                        </tr>
                                        
                                        
                                        
                                    </tbody>
                                </table>
                            </form>
                            <%} %>
</div>
</div>
</div>
          </div>  

<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="backtotop.jsp"></jsp:include>
</body>
</html>