<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Shopping Mall India @esamagri.com</title>
    
    
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
   <% String PRODUCT_NAME="";
   String seller="";%>

<body>

 <jsp:include page="nav.jsp"></jsp:include>
 <div class="container">
<div class="row">
<div class="mobile6b">

 <%
                        String BRAND_NAME=request.getParameter("brand");
                        //String CATEGORY_NAME="electronics";
                       
						Connection con = Db.Condb();
						String sql4="Select BRAND_ID from brand where BRAND_NAME=?";
						PreparedStatement ps4=con.prepareStatement(sql4);
						ps4.setString(1,BRAND_NAME );
						ResultSet rs4=ps4.executeQuery();
						if(rs4.next())		
						{
							
							
							%>
								
								<% 
								int BRAND_ID= rs4.getInt("BRAND_ID");
								
								%>
						
								
								<%String sql2= "select p.PRODUCT_ID,p.PRODUCT_NAME,p.SALES_PRICE,i.FILE_NAME from products p inner join image i on p.PRODUCT_ID=i.PRODUCT_ID where p.BRAND_ID=? order by rand()";
								PreparedStatement ps2=con.prepareStatement(sql2);
							
								ps2.setInt(1, BRAND_ID);
								ResultSet rs2=ps2.executeQuery();
								ArrayList<Integer> ar=new ArrayList<Integer>();%>
								
								<%
									  boolean status=true;
					                    while(status) {
					                %>
					                    
					                        
					                         
					                       <div class="col-md-4">
					                         <%System.out.println("");
					                         for(int i=1;i<=3;) {
					                         	   if(rs2.next()){
					                         		  int product_id=rs2.getInt(1);
					                              	  String FILE_NAME=rs2.getString(4);
					                             	 
					                             	 if(!ar.contains(product_id))
					                             	{
					                             		 ar.add(product_id);
					                         		   System.out.print(44+"product_id "+rs2.getInt(1)+"file_name "+rs2.getString(4)+"   ");
					                         	   %>
					                         	   
					                         	 
					                     	  
					                        <div>      <a href="single_product.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>&Product_Name=<%=rs2.getString(2)%>"><img src="Image5?p_id=<%=rs2.getInt(1)%>&filename=<%=rs2.getString(4)%>" alt="" width="200" height="200" ></img></a></div>
					                             <div><h4><a href="single_product.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>"><%=rs2.getString(2)%><br><i class="fa fa-inr"><%=rs2.getDouble(3)%></i></a></h4></div>
					                            
					                         <%--   
					                            <a href="singleproduct.jsp?product_id=<%=product_id%>&filename=<%=rs2.getInt(4)%>&Product_Name=<%=rs2.getString(2)%>"><img src="Image5?p_id=<%=product_id%>" alt="" class="product-thumb"></a></div>
                          <div>  <h2><a href="singleproduct.jsp"><%=rs2.getDouble(3)%></a></h2></div>
					                            --%>
					                         
					                            
					                         	   <% i++;}}else
					    {
					 	 status=false;
					 	 break;
					    }
					    }%>
					       </div>
					    <%}  
				                    
								%> 
							
							<%  
							
						}%>
					
 

</div></div></div>

  <jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include> 
  
 
</body>
</html>