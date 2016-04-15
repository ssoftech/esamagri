<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*" import="java.util.*,model.*" %>
   
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Shopping Mall India @esamagri.com</title>
     <link rel="stylesheet" href="css2/hover.css" type="text/css" />
  </head>
  
  <body>
  <jsp:include page="nav.jsp"></jsp:include>
  <jsp:include page="searchbox.jsp"></jsp:include>
 <jsp:include page="slider.jsp"></jsp:include>
 <jsp:include page="advt.jsp"></jsp:include>  
 
 
 
 <div class="container">

<div class="row">
<div class="col-md-12">
	<div class="grid">

		<div class="item-grid">

		<% try{
            	   Connection con= Db.Condb();
            	   String sql="select * from category";
            	   PreparedStatement ps=con.prepareStatement(sql);
               	
                   ResultSet rs=ps.executeQuery();	
                   while(rs.next()){
                	int category_id=rs.getInt("CATEGORY_ID");
                	System.out.println("11111"+category_id);
                    String category_name=rs.getString("CATEGORY_NAME");
                	System.out.println("222222"+category_name);
                	String sql1="select SUBCATEGORY_ID,SUBCATEGORY_NAME from subcategory where CATEGORY_ID=?";
                	PreparedStatement ps1=con.prepareStatement(sql1);
                   	ps1.setInt(1, category_id);
                    ResultSet rs1=ps1.executeQuery();	
                  
                    if(rs1.next()){
                	
                
                	int subcategory_id=rs1.getInt(1);
                	
                	System.out.println("333333"+subcategory_id);
                	String subcategory_name=rs1.getString(2);
                	System.out.println("44444"+subcategory_name);  %>
                	
                	<div class="row bg-info" >
                	<div class="col-xs-12 col-sm-8 col-md-10">
               <h2 style="color: black;font-style: oblique; font-family: sans-serif;"><%=subcategory_name %></h2>
               </div>
               <div class="col-md-2" style="margin-top: -4%; margin-left: 90%"  >
              <a href="show_subcategory.jsp?name=<%=subcategory_name %>"> <input type="button" value="view more" class="btn btn-success" /></a>
               </div>
               </div>
                <div class="container">
	                        	<div class="row1"> 
								
								
								
								<%String sql2= "select p.PRODUCT_ID,p.PRODUCT_NAME,p.SALES_PRICE,i.FILE_NAME from products p inner join image i on p.PRODUCT_ID=i.PRODUCT_ID where p.SUBCATEGORY_ID=? and p.CATEGORY_ID=?";
								PreparedStatement ps2=con.prepareStatement(sql2);
								ps2.setInt(1, subcategory_id);
								ps2.setInt(2, category_id);
								ResultSet rs2=ps2.executeQuery();
								ArrayList<Integer> ar=new ArrayList<Integer>();%>
								
								
					                             
								
								<%
									  boolean status=true;
					                    while(status) {
					                System.out.println("");
					                %>
					                
					                <table><tr>
					                <div class="col-md-3 "> 
			       					
			                         <%
					                           for(int i=1;i<=4;) {
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
					                         	   
					                         	  
					         
					              <td>   <h5 align="center">   <a href="single_product.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>&Product_Name=<%=rs2.getString(2)%>&price=<%=rs2.getDouble(3)%>">
					                     <img src="Image5?p_id=<%=rs2.getInt(1)%>&filename=<%=rs2.getString(4)%>" alt="" width="200" height="200"  class="img-rounded img1"></img></a></h5>
					                     
					                
					                <h5 align="center"><a href="single_product.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>"><%=rs2.getString(2)%><br><i class="fa fa-inr"><%=rs2.getDouble(3)%></i></a></h5>
					                        
					                          
					                         
					                       
					                            
					                         	   <% i++;}%>
					                         	   <%}   else
					    {
					     System.out.println("tutul ");
					 	 status=false;
					 	 break;
					    }
					         if(i==5) {
					        	 System.out.println("putul ");status=false; break;
					        	 }  
					         }
				                    
								%>  </div></tr></table>
					                         	   
					                         	   	   
					                         	  </div>    
					                         	   
					                         	   
                	 
					                         	   </div>
					                         	 
					                 
                  <%
                	
								} }
                   }
                }
                
                    
                   
                   catch (Exception e) {
                		// TODO Auto-generated catch block
                		e.printStackTrace();
                	}
                   %>
		

		</div>
	</div>
	</div>
</div>

</div>

<jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>
  </body>
</html>