<%@page import="cart.Dao_Cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="cart.Cart"%>
<%@page import="cart.Shopping_Cart"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Shopping Mall India @esamagri.com</title>
    
    <!-- Google Fonts -->
    
    <link rel="stylesheet" href="style.css">
    
     <link rel="stylesheet" href="css2/account.css">
      
    
      
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

	
	
</script>
    <script type="text/javascript">
    function cod(p)
	{
		var url="COD.jsp?p="+p;
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
	    document.getElementById("cc").innerHTML=xmlhttp.responseText;
	    }
	  }
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
	}  
 
    </script>

</head>
<body>

<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="searchbox.jsp"></jsp:include>
<jsp:include page="collapsible_menu.jsp"></jsp:include>
		<div class="container">
		
		
      <!-- End mainmenu area --></br></br></br></br>


 <table cellspacing="0" class="shop_table cart">
<div><%
          String email=(String)session.getAttribute("email");
int count=1;
      	  String address=Dao_Cart.getAddress(email);
          int product_id=Integer.parseInt(request.getParameter("product_id"));
          String product_name=request.getParameter("product_name");              
          Calendar now = Calendar.getInstance();
          String ordered_date=null;
          String  dateaftersevenday=null;
          int mon=now.get(Calendar.MONTH)+1;
          int count5=0,hold=mon;
              while(mon>0)
              {
           	   count5++;
           	   mon=mon/10;
           	   
              }
              String month=null;
              if(count5==1)
              {
           	   month="0"+hold;
              } 
              else
              {
           	   month=hold+"";
              }
              
               int dat=now.get(Calendar.DATE) ;
              int count1=0,hold1=dat;
              while(dat>0)
              {
           	   count1++;
           	   dat=dat/10;
           	   
              }
              String date=null;
              if(count1==1)
              {
           	   date="0"+hold1;
              }
              else
              {
           	   date=hold1+"";
              }
          
              ordered_date = month+"/"+date  + "/" + now.get(Calendar.YEAR); 


// add days to current date using Calendar.add method
           
  int dat12=now.get(Calendar.DATE) ;
              int count12=0,hold12=dat12+7;
              while(dat12>0)
              {
           	   count12++;
           	   dat12=dat12/10;
           	   
              }
              String date12=null;
              if(count12!=1)
              {
           	   date12="0"+hold12;
           	  
              }
              else
              {
           	   date12=hold12+"";
           	 
              } 


  dateaftersevenday=month+"/"+date12  + "/" + now.get(Calendar.YEAR); 
           
          %>
          
          
 <div align="center">
    1.Login Id-          <label class='control-label col-md-2 col-md-offset-2' for='email'>    <%=email%></label>
            
              </div><br>
  <div align="center">
    2.Address-        <label class='control-label col-md-2 col-md-offset-2' for='address'><%=address%></label>
            
          </div>




</div> </table>
<div align="center">3. ORDER SUMMARY <%=count%> item</div>
<div><%double SUB_TOTAL=Dao_Cart.Selct_SUBTotalPrice_buy(email, product_id);
out.println("4.Amount Payable "+SUB_TOTAL);%></div>
<br><br>
<table><tr><td>
<div id='cssmenu'>
<ul>
   <li class='active'><a href="#">5.PAYMENT METHOD</a></li>
   <li><a href='#'>DEBIT CARD</a></li>
   <li><a href='#'>CREDIT CARD</a></li>
   <li><a href="#">EMI</a></li>
   <li><a href="#" onclick="cod(1)">CASH ON DELIVERY</a></li>
   <li><a href="#">GIFT CARD</a></li>
   <li><a href="#">NET BANKING</a></li>  
</ul>
</div>
</td>
<td><form action="Order_buy.jsp" method="post">
<input type="hidden" name="email" Value="<%=email%>"/>
<input type="hidden" name="address" Value="<%=address%>"/>
<input type="hidden" name="order_amount" Value="<%=SUB_TOTAL%>"/>
<input type="hidden" name="product_name" Value="<%=product_name%>"/>
<input type="hidden" name="order_status" Value="1"/>
<input type="hidden" name="shipping_method" Value="by_hand"/>
<input type="hidden" name="discount" Value="0.0"/>
<input type="hidden" name="ordered_date" Value="<%=ordered_date%>"/>
<input type="hidden" name="divery_date" Value="<%=dateaftersevenday%>"/>
<div id="cc">
</div></form></td>
<td></td>

</tr>
</table>

</div>
  <jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>
</body>
</html>