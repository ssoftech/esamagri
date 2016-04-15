<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*" import="java.util.*" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String seller=request.getParameter("seller");
System.out.println("0000000000"+seller);

Connection con = Db.Condb();
String sql2= "select p.PRODUCT_ID,p.PRODUCT_NAME,p.SALES_PRICE,i.FILE_NAME from products p inner join image i on p.PRODUCT_ID=i.PRODUCT_ID where p.SUPPLIER_ID=?";
PreparedStatement ps2=con.prepareStatement(sql2);

ps2.setString(1, seller);
ResultSet rs2=ps2.executeQuery();
ArrayList<Integer> ar=new ArrayList<Integer>();%>
 
<%
	  boolean status=true;
        while(status) {
    %>
        
            
             
         
         <table>
					 <div class="col-md-3"> 
                
             <%System.out.println("");
             for(int i=1;i<=5;) {
            	 
            	 
             	   if(rs2.next()){
             		 
             		  int product_id=rs2.getInt(1);
                  	  String FILE_NAME=rs2.getString(4);
                 	 
                 	 if(!ar.contains(product_id))
                 	{
                 		 ar.add(product_id);
             		   System.out.print(44+"product_id "+rs2.getInt(1)+"file_name "+rs2.getString(4)+"   ");
             	   %>
             	   
             	 
             	  
         <td>   <div>      <a href="single_product.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>&Product_Name=<%=rs2.getString(2)%>"><img src="Image5?p_id=<%=rs2.getInt(1)%>&filename=<%=rs2.getString(4)%>" alt="" width="200" height="200"  class="img-responsive"></img></a></div>
                 <div align="center" ><h4><a href="single_product.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>"><%=rs2.getString(2)%><br><i class="fa fa-inr"><%=rs2.getDouble(3)%></i></a></h4></div></td>
                
             <%--   
                <a href="singleproduct.jsp?product_id=<%=product_id%>&filename=<%=rs2.getInt(4)%>&Product_Name=<%=rs2.getString(2)%>"><img src="Image5?p_id=<%=product_id%>" alt="" class="product-thumb"></a></div>
<div>  <h2><a href="singleproduct.jsp"><%=rs2.getDouble(3)%></a></h2></div>
                --%>
               
               
               
                 <div>
                      <ins></ins>
                 </div>
           
                
             	   <% i++;}}else
{
status=false;
break;
}
                 %>   <% }%>

<%} 
    
%> 
</div></table>







</body>
</html>