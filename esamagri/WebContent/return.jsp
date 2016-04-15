<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,db.*"  import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Shopping Mall India @esamagri.com</title>
    
   
    <link rel="stylesheet" href="style.css">
    
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="searchbox.jsp"></jsp:include>
<div class="container" style="padding-top: 50px;">
<% String PRODUCT_NAME="";
   String seller="";%>
 


<%Calendar now = Calendar.getInstance();
String delivered_date = (now.get(Calendar.DATE) + 1) + "-"
        + now.get(Calendar.MONTH) + "-" + now.get(Calendar.YEAR);


//add days to current date using Calendar.add method
now.add(Calendar.DATE, 7);

String  dateaftersevenday=now.get(Calendar.DATE) + "-"
+( now.get(Calendar.MONTH)+ 1) + "-" + now.get(Calendar.YEAR);%>





<div align="center">

<form action="Return" method="post">

<fieldset>
    
                   
<legend align="bottom">Return Items</legend>

<p>
<label align="center">EMAIL:<input type="text" name="email"></input></label>

<label align="center">ORDER ID:<input type="text" name="ORDER_DETAILS_ID"></input></label>

<label align="center">PHONE NO:<input type="text" name="PHONE_NO" ></input></label></br></br>
<label>Why are your returning this?

<select id = "myList" name="REASON">

               <option value = "choose any one">Choose Reason</option>
               <option value = "Accidental Order">Accidental Order</option>
               <option value = "Better Price Available">Better Price Available</option>
               <option value = "Performance or Quality not Adequate">Performance or Quality not Adequate</option>
               <option value = "Damaged due to poor Packing">Damaged due to poor Packing</option>
               <option value = "Not usefull for intended purpose">Not usefull for intended purpose</option>
               <option value = "Damaged during delivery">Damaged during delivery</option>
               <option value = "Missed estimated delivery dates">Missed estimated delivery dates</option>
               <option value = "Unauthorized Purchase">Unauthorized Purchase</option>
             
</select>
<label>GIVE DETAILED REASON : <input type="text"  name="Give details reason" placeholder="Give details reason"></input></label>
</label>

</p>
</fieldset>

<div id="comments" style="display: none">
        Comments:
        <textarea id="comments" rows="4" cols="50" name="comment">
</textarea>
        <!-- <input type="text" id="txtPassportNumber" /> -->
    </div>

<br><br><br><br><br><br>
<fieldset>
<legend>Account Details</legend>
<p>
<label for="Name">Name of Account Holder&nbsp&nbsp
<input type="text" name="NAME" id="IFSC"></label><br><br>
<label for="Bank_Name">Bank Name&nbsp&nbsp<input type="text" name="BANK_NAME" id="bank"></label><br><br>

<label for="Account Number">Account Number&nbsp&nbsp<input type="text" name="ACCOUNT_NUMBER" id="account"></label><br><br>

<label for="IFSC_Code">IFSC Code&nbsp&nbsp<input type="text" name="IFSC_CODE" id="IFSC"></label><br><br>

<label for="Branch_Code" >Branch Code&nbsp&nbsp<input type="text" name="BRANCH_CODE" id="IFSC"></label><br><br>



<input type="hidden" name="divery_date" Value="<%=dateaftersevenday%>"/>
<input type="submit" value="Submit" align="center">




</p>
</fieldset>
</form>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="backtotop.jsp"></jsp:include>

</body>
</html>