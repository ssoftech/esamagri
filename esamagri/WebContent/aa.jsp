<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    

   
    <script type="text/javascript">
    function status() {
    	alert("sdawdw");
    	  var order_id = document.getElementById("ORDER_DETAILS_ID").value;
    	  //var order_id=7;
    	 alert("jkjk "+order_id);
    	  var url="status.jsp?order_id="+order_id;
    	  if (window.XMLHttpRequest) {
    	    // code for modern browsers
    	    xhttp = new XMLHttpRequest();
    	    } else {
    	    // code for IE6, IE5
    	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    	  }
    	  xhttp.onreadystatechange = function() {
    	    if (xhttp.readyState == 4 && xhttp.status == 200) {
    	      alert("asasd");
    	    	document.getElementById("status").innerHTML = xhttp.responseText;
    	    	alert("ppppp");
    	    }
    	  };
    	  xhttp.open("Get",url,true);
    	  xhttp.send();
    	}
    </script>
  </head>

  <body>
  <div>
          
              <table width="401" height="79" cellpadding="2" cellspacing="1">
                <tr>
                  <td width="121" height="32" scope="col">Enter Order Id</td>
                  <td width="267" scope="col"><input class="form-control" name="ORDER_DETAILS_ID" id="ORDER_DETAILS_ID" type="text"></td>
                </tr>
                
                <tr>
      <td colspan="5" align="center">
<input type="button"  value="Submit" onclick="status()"></td>
    </tr>
    
              </table>
              
</div>
         
  <div id="status"></div>
   
  </body>
</html>
