<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*" import="java.util.*" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

   
    
    
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css2/deactivate.css" media="screen">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Order</title>
</head>

<body>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="searchbox.jsp"></jsp:include>

<% String PRODUCT_NAME="";
   String seller="";%>
 
<div class="container" style="padding-top: 70px;padding-bottom: 30px;">
<div id='cssmenu'>
<ul>
   <li class='active'>
   <a href="myaccount.jsp">My Account</a></li>
   <li><a href='myorder.jsp'>My Orders</a></li>
   <li><a href="personal_info.jsp">Personal Information</a></li>
   <li><a href="change_password.jsp">Change Password</a></li>
   <li><a href="address.jsp">Addresses</a></li>
   <li><a href="update.jsp">Update Account</a></li>
   <li><a href="deactivate.jsp">Deactivate Account</a></li>
   
</ul>
</div>
<%    String email2=(String)session.getAttribute("email");
System.out.println("aaaaaaaa"+email2);
Connection con = Db.Condb();
                	String sql="select o.ORDER_DETAILS_ID, o.ADDRESS,o.ORDER_AMOUNT,o.PAYMENT_TYPE,o.ORDER_DATE,e.NAME from order_details o inner join order_cart e on o.ORDER_DETAILS_ID=e.ORDER_ID where o.email=?";
                	PreparedStatement ps=con.prepareStatement(sql);
                	ps.setString(1,email2);
                	
                     ResultSet rs=ps.executeQuery();
                     
                    %>
                    
                    <% while(rs.next()){%>
                  	
                  	
                 
                  	<div style="margin-left:130px;" align="center" >
                    <span >  <table border="1" >
                    <tr><th> ORDER_DETAILS_ID</th><th> ADDRESS</th><th>ORDER_AMOUNT</th><th>PAYMENT_TYPE</th><th>ORDER_DATE</th><th>NAME</th><th> </th></tr>
                           <tr> <td style="height:4%;width:15%"><%=rs.getInt("ORDER_DETAILS_ID")%></td>
                            
                           
                            <td style="height:4%;width:15%"><%=rs.getString("ADDRESS")%></td>
                       <td style="height:4%;width:15%"><%=rs.getDouble("ORDER_AMOUNT")%></td>
                        <td style="height:4%;width:15%"><%=rs.getString("PAYMENT_TYPE")%></td>
                         <td style="height:4%;width:15%"><%=rs.getString("ORDER_DATE")%></td>
                          <td style="height:4%;width:15%"><%=rs.getString("NAME")%></td>
                          <td style="height:4%;width:15%"><a href="cancel_order?ORDER_DETAILS_ID=<%=rs.getInt("ORDER_DETAILS_ID")%>&name=<%=rs.getString("NAME")%>">remove order</a></td>
                          
                          </tr>
                         
                   <span> <input type="hidden" name="ORDER_DETAILS_ID" value="<%=rs.getInt("ORDER_DETAILS_ID")%>"/></span>
                      </span>
                     <span> <input type="hidden" name="ADDRESS" value="<%=rs.getString("ADDRESS")%>"/></span>
                      </span>
                      <span> <input type="hidden" name="ORDER_AMOUNT" value="<%=rs.getDouble("ORDER_AMOUNT")%>"/></span>
                      </span>
                      <span> <input type="hidden" name="PAYMENT_TYPE" value="<%=rs.getString("PAYMENT_TYPE")%>"/></span>
                      </span>
                      <span> <input type="hidden" name="ORDER_DATE" value="<%=rs.getString("ORDER_DATE")%>"/></span>
                      </span>
                      <span> <input type="hidden" name="NAME" value="<%=rs.getString("NAME")%>"/></span>
                      </span>
                      
                     <%} %>
                       </table>
                       </span>
                       </div>
                       
                       
                     
            </div>    

<jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>

</body>
</html>