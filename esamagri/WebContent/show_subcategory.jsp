<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Shopping Mall India @esamagri.com</title>
     <link rel="stylesheet" href="css2/hover.css" type="text/css" />
    
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
 <jsp:include page="searchbox.jsp"></jsp:include>
<jsp:include page="collapsible_menu.jsp"></jsp:include>
 
 <div class="container" >



 <%
                        String SUBCATEGORY_NAME=request.getParameter("name");
                        //String CATEGORY_NAME="electronics";
                        System.out.println("SUBcategory name is"+SUBCATEGORY_NAME);
						

						Connection con = Db.Condb();
						String sql4="Select SUBCATEGORY_ID from subcategory where SUBCATEGORY_NAME=?";
						PreparedStatement ps4=con.prepareStatement(sql4);
						ps4.setString(1,SUBCATEGORY_NAME );
						ResultSet rs4=ps4.executeQuery();
					 while(rs4.next())		
						{
							System.out.println(1);
							int SUBCATEGORY_ID=rs4.getInt("SUBCATEGORY_ID");
							System.out.println("SUBCATEGORY_ID"+SUBCATEGORY_ID);
							String sql1= "select BRAND_ID,BRAND_NAME from brand where SUBCATEGORY_ID=? ";
							PreparedStatement ps1=con.prepareStatement(sql1);
							ps1.setInt(1, SUBCATEGORY_ID);
							ResultSet rs1=ps1.executeQuery();
						while(rs1.next())
							{
						      System.out.println(2);%>
								
								<% 
								int BRAND_ID= rs1.getInt("BRAND_ID");
								String BRAND_NAME=rs1.getString("BRAND_NAME");
								
								 System.out.println(BRAND_NAME+"xxxx");
								%>
						
								
								<%String sql2= "select p.PRODUCT_ID,p.PRODUCT_NAME,p.SALES_PRICE,i.FILE_NAME from products p inner join image i on p.PRODUCT_ID=i.PRODUCT_ID where p.SUBCATEGORY_ID=? and p.BRAND_ID=? order by rand()";
								PreparedStatement ps2=con.prepareStatement(sql2);
								ps2.setInt(1, SUBCATEGORY_ID);
								ps2.setInt(2, BRAND_ID);
								ResultSet rs2=ps2.executeQuery();
								ArrayList<Integer> ar=new ArrayList<Integer>();%>
								
								<%
									  boolean status=true;
					                    while(status) {
					                    	System.out.println("");
					                    	%><div class="row1">
					              <div class="col-md-3">  <table><tr>
					                
			                         <%
					                           for(int i=1;i<=3;) {
					                        	   System.out.println("i "+i);
					                          if(rs2.next())
					                        	 {
					                         
					                        		 
					                        		int  product_id=rs2.getInt(1);
						                           System.out.println("product id"+product_id);
					                              	  String FILE_NAME=rs2.getString(4);
					                             	 
					                              
					                             	 if(!ar.contains(product_id))
					                             	{
					                             		
					                             	 ar.add(product_id);
					                             		
					                         		   System.out.print(44+"product_id "+rs2.getInt(1)+"file_name "+rs2.getString(4)+"   ");
					                         	   %>
					                         	   
					                      
					         
					               <td>  <h5 align="center">   <a href="single_product.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>&Product_Name=<%=rs2.getString(2)%>&price=<%=rs2.getDouble(3)%>">
					                     <img src="Image5?p_id=<%=rs2.getInt(1)%>&filename=<%=rs2.getString(4)%>" alt="" width="200" height="200" class="img-rounded img1"></img></a></h5>
					                     
					                
					                <h5 align="center"><a href="single_product.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>"><%=rs2.getString(2)%><%=rs2.getDouble(3)%></a></h5></td>
					                        
					                          
					                         
					                       
					                            
					                         	   <% i++;}%>
					                       	   <%}   else
					    {
					     System.out.println("tutul ");
					 	 status=false;
					 	 break;
					    }
					         
					         }
				                    
								%>
					                   </tr></table></div></div>      	   	   
					                         	 
                  <%
                	
					    }  
				                    
								%> 
							
							<% } 
							
						}%>
					
 

</div>

  <jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include> 
  
 
</body>
</html>