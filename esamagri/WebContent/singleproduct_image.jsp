<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*" import="java.util.*" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css2/singleproduct.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        $('#demo-1 .simpleLens-thumbnails-container img').simpleGallery({
            loading_image: 'img/loading.gif'
        });

        $('#demo-1 .simpleLens-big-image').simpleLens({
            loading_image: 'img/loading.gif'
        });
    });
    
    function my_click(product_id,color_id,quantity) {
		 
		
		 
		  
		  if(quantity==0)
			{
			  
			 
			  alert("out of stock");
			 
			  document.getElementById("click").innerHTML = xhttp.responseText;
			 // response.sendRedirect("singleproduct.jsp?&product_id="+product_id+"&color_id="+color_id+"&quantity="+quantity);
			// var url="singleproduct.jsp?&product_id="+product_id+"&color_id="color_id+"&quantity="+quantity;
			 alert(product_id+"product_id"+"color_id"+color_id+"quantity"+quantity)
			  
			}
		  
		  
		  
		} 
    
    
    
    
    
    
    
</script>




</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="searchbox.jsp"></jsp:include>
<%try{
            	   
                   int Product_id=Integer.parseInt(request.getParameter("product_id"));
                    System.out.println("pidkk "+Product_id);
                    String filename=request.getParameter("filename");
            	    Connection con = Db.Condb();
                	String sql1="select t.PRODUCT_ID,p.PRODUCT_NAME,p.SALES_PRICE,p.DISCOUNTS,t.file_name,p.SHORT_DESCRIPTION,p.DETAILED_DESCRIPTION,c.color,p.SUPPLIER_ID,p.WARRENTY,c.COLOR_ID,c.QUANTITY,p.DETAILED_DESCRIPTION,p.MSRP from image t inner join products p  on t.PRODUCT_ID=p.PRODUCT_ID inner join color c on t.PRODUCT_ID=c.PRODUCT_ID where p.PRODUCT_ID=? and t.FILE_NAME=?";
                	PreparedStatement ps=con.prepareStatement(sql1);
                	ps.setInt(1,Product_id);
                	ps.setString(2,filename);
                    ResultSet rs=ps.executeQuery();
                    if(rs.next()){
                    	
                    String color=rs.getString(8);
                   String seller=rs.getString(9);
                      int color_id=rs.getInt(10);
                      String supplier_id=rs.getString(9);
                      System.out.println("1111"+supplier_id);
                      String product_name=rs.getString(2);
                      %>






<div class="container-fluid" style="padding-top: 50px;">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-12">
					<div class="product col-md-3 service-image-left">
                    
						<center>
							<img id="item-display" src="Image_single?product_id=<%=rs.getInt(1)%>&filename=<%=rs.getString(5)%>"style="height: 85%;width: 85%;" alt="" /></img>
						</center>
					</div>
					<div class="container service1-items col-sm-2 col-md-2 pull-left">
						<center>
					
		<%  
                   
                       String sql2="select FILE_NAME from image   where PRODUCT_ID=? and FILE_NAME!=?";
                   	 PreparedStatement ps1=con.prepareStatement(sql2);
                   	ps1.setInt(1,Product_id);
                   	ps1.setString(2,filename);
                       ResultSet rs2=ps1.executeQuery();
                       
                       while(rs2.next()){
                    	   
                    	   String str=rs2.getString(1);
                    	   System.out.println("str "+str); 
                      %>			
					
					
					
							<a id="item-1" class="service1-item" href="singleproduct_image.jsp?product_id=<%=Product_id%>&filename=<%=str%>"><img src="Image_single?product_id=<%=Product_id%>&filename=<%=str%>" alt=""  ></a>
							
					
				<%} %>
						</center>
					</div>
				<div class="col-md-7">
					<div class="product-title"><%=rs.getString(2) %></div>
					<b> Manufacturar warrenty=<%=rs.getString(10) %></b><br>
				<div>	<b> Seller name :<a href="retailer_product.jsp?seller=<%=supplier_id%>&product_id=<%=Product_id%>"><%=supplier_id%></a>  </b>  </div>
					<div class="product-desc"><span class="glyphicon glyphicon-hand-right"></span><%=rs.getString(6) %></div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					
					
					<hr>
					<div class="product-price"><i class="fa fa-inr"><del><%=rs.getDouble(14) %></del></i></div>
					<div class="product-price"><i class="fa fa-inr"><%=rs.getDouble(3) %></i></div>
					<div class="product-stock">In Stock</div>
					<hr>
					<form action="Cart" class="cart" method="post">
      <div id="click">
      <input type="hidden" name="product_id" value="<%=rs.getInt(1)%>"/>
                                        <input type="hidden" name="shor_des" value="<%=rs.getString(6)%>"/>
                                         <input type="hidden" name="price" value="<%=rs.getDouble(3)%>"/>
                                          <input type="hidden" name="name" value="<%=rs.getString(2)%>"/>
                                           <input type="hidden" name="seller" value="<%=rs.getString(9)%>"/>
                                           <input type="hidden" name="color_id" value="<%=rs.getInt(10)%>"/>
                                           <input type="hidden" name="quantity" value="<%=rs.getInt(12)%>"/>
   
   
  <button class="btn btn-success" type="submit" name="p" value="cart" onClick="my_click(<%=rs.getInt(1)%>,<%=rs.getInt(10)%>,<%=rs.getInt(12)%>)">Add to cart</button>
   
   
  
  
  <button class="btn btn-warning" type="submit" name="p" value="buy" onClick="my_click(<%=Product_id%>,<%=rs.getInt(10)%>,<%=rs.getInt(12)%>)">buy now</button>
   
   
       </div></form>
				</div>
			</div> 
		</div>
		</div>&nbsp;&nbsp;
		
		<h3>Related products</h3>
		
		 <%   String sql23="select SUBCATEGORY_ID from products where PRODUCT_NAME=?";    
             
             PreparedStatement ps23=con.prepareStatement(sql23);
         	ps23.setString(1,product_name);
         	
         	ResultSet rs23=ps23.executeQuery();
         	if(rs23.next()){
         		
         		int subcategory_id=rs23.getInt(1);
         		
         		
        String sql52="select p.PRODUCT_ID, p.PRODUCT_NAME, p.SHORT_DESCRIPTION, p.SALES_PRICE, t.FILE_NAME FROM products p inner join image t on p.PRODUCT_ID=t.PRODUCT_ID where p.SUBCATEGORY_ID=? and p.PRODUCT_ID!=? ORDER BY p.PRODUCT_ID ASC LIMIT 4";    	
                      
        PreparedStatement ps52=con.prepareStatement(sql52);
     	ps52.setInt(1,subcategory_id);
     	ps52.setInt(2,Product_id);
     	ResultSet rs52=ps52.executeQuery();   
    	ArrayList<Integer> ar=new ArrayList<Integer>();
    	
    	
    	
    	%><div class="container-fluid">
		<div class="col-md-12 related product">
     	<% while(rs52.next()){
     		
     	int product_id1=rs52.getInt(1);

                               if(!ar.contains(product_id1))
					                             	{
					                             		
					                             	 ar.add(product_id1);%>

	
			
			<div class="col-md-3">
<a href="single_product.jsp?product_id=<%=rs52.getInt(1)%>&filename=<%=rs52.getString(5)%>&Product_Name=<%=rs52.getString(2)%>&price=<%=rs52.getDouble(4)%>">

   <img
									src="Image5?p_id=<%=rs52.getInt(1)%>&filename=<%=rs52.getString(5)%>"
									alt="" width="200" height="200" class="img-responsive"></img></a>
    <h5>
								<a
									href="single_product.jsp?product_id=<%=rs52.getInt(1)%>&filename=<%=rs52.getString(5)%>"><%=rs52.getString(2)%><br><i class="fa fa-inr"><%=rs52.getDouble(4)%></i></a>

		
		</h5></div>
		
	


						<%--  <div> <%=rs52.getString(2) %>  </div>  --%>
    
					                        
					                     		
     		 
     		
     	<%}}%> </div>
		
		</div><%}%>
		
		<div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
						<li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>
						
					</ul>
				<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
								

								<h3>Description:</h3>
								<li><%=rs.getString(13) %></li>
								
							</section>
										  
						</div>
					
					<div class="tab-pane fade" id="service-three">
								<section class="container product-info">
								

								<h3>Reviews:</h3>
				    <form action="feedback" method="POST">
          <fieldset>
    
            <!-- Name input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Product Name</label>
              <div class="col-md-9">
                <input id="name" name="product_name" type="text" placeholder="product name" class="form-control">
              </div>
            </div>
    
            <!-- Email input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="email">Your E-mail</label>
              <div class="col-md-9">
                <input id="email" name="email" type="text" placeholder="Your email" class="form-control">
              </div>
            </div>
    
            <!-- Message body -->
            <div class="form-group">
              <label class="col-md-3 control-label" for="message">Your message</label>
              <div class="col-md-9">
                <textarea class="form-control" id="message" name="message" placeholder="Please enter your feedback here..." rows="5"></textarea>
              </div>
            </div>
           <!-- Date body -->
            <div class="form-group">
              <label class="col-md-3 control-label" for="message">Date</label>
              <div class="col-md-9">
                 <input id="date" name="date" type="text" placeholder="" class="form-control">
              </div>
            </div>

            <!-- Rating -->
            <div class="form-group">
              <label class="col-md-3 control-label" for="message">Your rating</label>
              <div class="col-md-9">
                <select name="rating">
                                                            <option value="Select">Select Your Rating</option>
                                                            <option value="poor">poor</option>
                                                             <option value="good">good </option>
                                                              <option value="very good">very good</option>
                                                               <option value="excellent">excellent</option>
                                                        </select>
              </div>
            </div>
    
            <!-- Form actions -->
            
                <button type="submit" class="btn btn-primary btn-md">Submit</button>
                <button type="reset" class="btn btn-default btn-md">Clear</button>
             
          </fieldset>
          </form>				
								
							</section>					
					</div>
				</div>
				<hr>
			</div>
		</div>
	</div>
</div> <%}}catch(Exception e)
  {
	   e.printStackTrace();
	 } %>
<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="backtotop.jsp"></jsp:include>
</body>
</html>