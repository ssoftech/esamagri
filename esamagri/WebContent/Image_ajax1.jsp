<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String product_id=null;
int image_id=0;

		try{  product_id=request.getParameter("product_id");
		image_id=Integer.parseInt(request.getParameter("image_id"));
		 System.out.println("in ajax image_id "+image_id) ; 
		}
catch(Exception e)
{
	e.printStackTrace();
}
		
			
		%>
		<div><img src="Product_Image?product_id=<%=product_id%>&image_id=<%=image_id%>" height="70" width="70"></img>
			</div> 
		  
		
</body>
</html>