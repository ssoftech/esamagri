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
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Shopping Mall India @esamagri.com</title>
    
  
    <link rel="stylesheet" href="style.css">
    
     
    
      
    <script language="JavaScript" type="text/javascript">
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
    </script>

</head>
<body>

 <jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="searchbox.jsp"></jsp:include>
<jsp:include page="collapsible_menu.jsp"></jsp:include>


<div class="container">

 <table cellspacing="0" class="shop_table cart">
<div><%
      String email=(String)session.getAttribute("email");
       int count=Dao_Cart.Total_item_Cart(email);
if(email==null)
{
	String Page="Place_Order.jsp";
	response.sendRedirect("LOG_in.jsp?Page="+Page);
}
    
      	  String address=Dao_Cart.getAddress(email);%>

 <div align="center">
           1.Login Id-<%=email%> 
            
              </div><br>
  <div  align="center">
       2.Address-<%=address%>     
            
          </div>
       

</div> </table>
 <div align="center">3. ORDER SUMMARY <%=count%> items</div>
<br><br>

 <div class="col-md-12" style="padding-top: 70px;">
                    <div class="product-content-right">
                        <div class="woocommerce">
                         <form method="post" action="#">
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

	
	ArrayList<Shopping_Cart> cart_list=(ArrayList<Shopping_Cart>)Dao_Cart.View_Cart(email);
	session.setAttribute("cart_list",cart_list);
	  Iterator<Shopping_Cart> it=cart_list.iterator();
	  int cnt=0;

	  while(it.hasNext())
	  {
		  Shopping_Cart ob=it.next();
		  
	  
	%>
                           
                                    <tbody>
                                        <tr class="cart_item">
                                            

                                            <td class="product-thumbnail">
                                                <a href="singleproduct.jsp"><img src="Image2?id=<%=ob.getProduct_id()%>" width="145" height="145" alt="poster_1_up" class="shop_thumbnail" ></a>
                                            </td>

                                            <td class="product-name">
                                             <%=ob.getProduct_name()%><br/>
                                             <%=ob.getShort_description()%><br/>
                                             Seller:<%=ob.getSeller() %>
                                            </td>

                                            <% cnt=cnt+1;%>
                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                   <%=ob.getQuantity() %>
                                                  <%-- <select name="quantity" id="quantity" onChange="total(<%=ob.getProduct_id()%>,<%=cnt%>,<%=ob.getPrice()%>,this.value,<%=ob.getShipping_charge()%>,'<%=email%>');">
                                                    <option selected><%=ob.getQuantity()%></option>
                                                    <% for(int i=1;i<=10;i++){
                                                    if(i!=ob.getQuantity()){%>
                                                    <option><%=i%></option>
                                                    <%}} %>
                                                    </select> --%>
                                                    
                                                </div>
                                            </td>
                                             <td class="product-price">
                                                <span id="total<%=cnt%>" class="amount"><%=ob.getTotal_price()%></span> 
                                            </td>
											<td class="product-name">
                                          Shipping Charge:   <%=ob.getShipping_charge() %><br/>
                                             
                                            </td>
                                            <td class="product-subtotal">
                                            
                                                <span id="subtotal<%=cnt%>" class="amount"><%=ob.getSubtotal()%></span> 
                                            </td>
                                        </tr>
                                        <%} %>
                                        
                                        <tr>
                                            <td class="actions" colspan="6">
                                                
                                                <%String email5=(String)session.getAttribute("email");
                                     	System.out.println("cccccc");
                                    	ArrayList<Shopping_Cart> cart_list1=(ArrayList<Shopping_Cart>)Dao_Cart.View_Cart(email5);
                                    	session.setAttribute("cart_list",cart_list1);
                                    	  Iterator<Shopping_Cart> it1=cart_list1.iterator();
                                    	  
                                    	 
                                    	  if(it1.hasNext())
                                    	  {
                                    		  Shopping_Cart ob=it1.next(); 
                                                   %>  
                                                   <a href="Payment_Method_cart.jsp?product_id<%=ob.getProduct_id()%>">Continue</a>
                                                  <%} %>   <div class="cart_totals ">
                               

                                <table cellspacing="0">
                                    <tbody>
                                        

                                        <tr class="order-total">
                                            <th>Order Total</th>
                                            <td><strong><span id="grand_total" class="amount">
                                            <% double order_total_price=Dao_Cart.getOrder_Total_ByEmail(email);%>
                                            <%=order_total_price%></span></strong> </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                                           
                                              
                                            </td>
                                        </tr>
                                        
                                        
                                        
                                    </tbody>
                                </table>
                            </form>
</div>
</div>
</div></div>
    <jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>


</body>
</html>