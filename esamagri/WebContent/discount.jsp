<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,java.util.*,bean.*"%>
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
<jsp:include page="collapsible_menu.jsp"></jsp:include>
<div class="container">



<%
String discount=request.getParameter("discount");


String discount1=discount+" "+"%";

//String CATEGORY_NAME="electronics";


Connection con = Db.Condb();
		String sql2= "select p.PRODUCT_ID,p.PRODUCT_NAME,p.SALES_PRICE,i.FILE_NAME from products p inner join image i on p.PRODUCT_ID=i.PRODUCT_ID where p.DISCOUNTS=?";
		PreparedStatement ps2=con.prepareStatement(sql2);
		ps2.setString(1, discount1);
		
		ResultSet rs2=ps2.executeQuery();
		ArrayList<Integer> ar=new ArrayList<Integer>();%>
		
		<%
			  boolean status=true;
                while(status) {
            %>
                
                    <div class="row1"> 
                    <table >
                      <div class="col-md-4"> 
                   
                     <%System.out.println("");
                     for(int i=1;i<=3;) {
                     	   if(rs2.next()){%>
                     	   
                     	 
                     	   
                     		  <%int product_id=rs2.getInt(1);
                          	  String FILE_NAME=rs2.getString(4);
                         	 
                         	 if(!ar.contains(product_id))
                         	{
                         		 ar.add(product_id);
                     		   System.out.print(44+"product_id "+rs2.getInt(1)+"file_name "+rs2.getString(4)+"   ");
                     	   %>
                     	   
                     	 
                    <td> 	  
                    <div>      <a href="single_product.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>&Product_Name=<%=rs2.getString(2)%>"><img src="Image5?p_id=<%=rs2.getInt(1)%>&filename=<%=rs2.getString(4)%>" alt="" width="200" height="200" class="img-rounded img1"></img></a></div>
                         <div><h4><a href="single_product.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>"><%=rs2.getString(2)%><br><%=rs2.getDouble(3)%></a></h4></div></td>
                        
                 
                        
                     	   <% i++;}%><%}else
{
	 status=false;
	 break;
}
}%>
   </div></table></div>
<%}  
            
		%> 
	
	

</div>




<jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>
</body>
</html>