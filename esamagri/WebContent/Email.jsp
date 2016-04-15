<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sending Email</title>
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<div class="container">

<div class="row">

<div class="col-md-12">

<form class="form-horizontal" action="Send_Mail" method="post">
<fieldset>

<!-- Form Name -->
<legend>Send Mail</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Recepient Address</label>  
  <div class="col-md-8">
  <input id="textinput" name="Recipient" type="text" placeholder="Enter Mail Id" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Subject</label>  
  <div class="col-md-8">
  <input id="textinput" name="Subject" type="text" placeholder="Provide Subject" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="textarea">Message</label>
  <div class="col-md-8">                     
    <textarea class="form-control" id="textarea" name="Content" placeholder="Provide your Message"></textarea>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-block btn-primary">Submit</button>
  </div>
</div>

</fieldset>
</form>

</div>

</div>
</div>

</body>
</html>