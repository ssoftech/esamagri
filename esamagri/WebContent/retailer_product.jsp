<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*" import="java.util.*" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css2/hover.css" type="text/css" />

</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
  <jsp:include page="searchbox.jsp"></jsp:include>

<div class="container">


<%try{

String seller= request.getParameter("seller");

Connection con= Db.Condb();
	String sql2= "select p.PRODUCT_ID,p.PRODUCT_NAME,p.SALES_PRICE,i.FILE_NAME from products p inner join image i on p.PRODUCT_ID=i.PRODUCT_ID  where SUPPLIER_ID=?";
	PreparedStatement ps2=con.prepareStatement(sql2);
	ps2.setString(1, seller);
	
	ResultSet rs2=ps2.executeQuery();
	ArrayList<Integer> ar=new ArrayList<Integer>();%>
	
	
                     
	
	<%
		  boolean status=true;
            while(status) {
        System.out.println("");
        %><div class="row1">
        <table><tr>
        <div class="col-md-3"> 
			
         <%
                   for(int i=1;i<=5;) {
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
        
	%>  </div></tr></table> </div> 
                 	   
                 	   	   
                 	 


	



           <%}
        }
catch (Exception e) {
// TODO Auto-generated catch block
e.printStackTrace();
}



%>

</div>

<jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>

</body>
</html>