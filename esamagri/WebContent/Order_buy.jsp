<%@page import="cart.Dao_Cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,cart.Shopping_Cart" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Shopping Mall India @esamagri.com</title>
    
   
    <link rel="stylesheet" href="style.css">
    
    <script>

	function show_Date()
	{
		
		document.getElementById("REVIEW_DATE").value=new Date();
		
		
	}
    </script>
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="searchbox.jsp"></jsp:include>
<jsp:include page="collapsible_menu.jsp"></jsp:include>
<div class="container">
<%


String payment_type="CASH ON DELIVERY";
String email=request.getParameter("email"); 
String address=request.getParameter("address"); 
 Double order_amount=Double.parseDouble(request.getParameter("order_amount")); 

int order_status_id=Integer.parseInt(request.getParameter("order_status")); 
String shipping_method=request.getParameter("shipping_method"); 
Double discount=Double.parseDouble(request.getParameter("discount")); 
String ordered_date=request.getParameter("ordered_date"); 
String delivery_date=request.getParameter("divery_date");
int order_details_id=(int)(Math.random() * 100000);
int i=Dao_Cart.Insert_Order_buy(order_details_id, payment_type, email, address, order_amount, order_status_id, shipping_method, discount, ordered_date);
System.out.println("i"+i);

ArrayList<Shopping_Cart> cart_list=(ArrayList<Shopping_Cart>)Dao_Cart.View_Cart(email);
session.setAttribute("cart_list",cart_list);

  Iterator<Shopping_Cart> it=cart_list.iterator();
  int j=0,k=0,m=0;
  System.out.println("jjjjjjj");
  while(it.hasNext())
  {
	  
	  Shopping_Cart ob=it.next();
	 
	  int product_id=ob.getProduct_id();
	  System.out.println("product_id123"+product_id);
	  String name=ob.getProduct_name();
	  double price=ob.getSubtotal(); 
	  int quantity=ob.getQuantity(); 
	  System.out.println("quantity123"+quantity);
	  String seller=ob.getSeller();
	  int color_id=ob.getColor_id();
	  System.out.println("color_id123"+color_id);
	  
	  
	 j=Dao_Cart.Insert_Order_cart(order_details_id, product_id, name, price, quantity,seller,email);
	 System.out.println("j"+j);
	 k=Dao_Cart.quantity_update(product_id, quantity, color_id);
	 System.out.println("k"+k);
	   m=Dao_Cart.remove_registered_cart(email);

  }
if(i==1 && j==1 && k==1)
 {%><div style="margin-top: 100px;">
   <div>Your Order has been placed </div>
   <div>Expected Delivery Date <%=delivery_date %> </div></div>
   <%} 
   %>
   

   </div><br><br><br><br><br><br><br><br><br><br><br><br>
   <jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>
   
   
</body>
</html>