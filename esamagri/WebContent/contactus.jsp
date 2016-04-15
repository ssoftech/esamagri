<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-samagri/Contact Us</title>

<style type="text/css">

.map-responsive{
    overflow:hidden;
    padding-bottom:56.25%;
    position:relative;
    height:0;
}
.map-responsive iframe{
    left:0;
    top:0;
    height:100%;
    width:100%;
    position:absolute;
}

</style>
</head>
<body>

<jsp:include page="nav.jsp"></jsp:include>
<div class="container-fluid" style="padding-top: 70px;">
  <div class="row">
  
    <div class="col-sm-5 col-sm-offset-1">
      
      <h2>Contact Us</h2>
      
      <form class="form-horizontal">
        <div class="form-group">
              <div class="col-xs-3">
                  <input class="form-control" id="firstName" name="firstName" placeholder="First Name" required="" type="text">
              </div>
              <div class="col-xs-3">
                  <input class="form-control" id="middleName" name="firstName" placeholder="Middle Name" required="" type="text">
              </div>
              <div class="col-xs-4">
                  <input class="form-control" id="lastName" name="lastName" placeholder="Last Name" required="" type="text">
              </div>
          </div>
          <div class="form-group">
              <div class="col-xs-5">
                  <input class="form-control" name="email" placeholder="Email" required="" type="email">
              </div>
              <div class="col-xs-5">
                  <input class="form-control" name="phone" placeholder="Phone" required="" type="email">
              </div>
          </div>
          <div class="form-group">
              <div class="col-xs-10">
                  <input class="form-control" placeholder="Website URL" required="" type="homepage">
              </div>
          </div>
          <div class="form-group">
              <div class="col-xs-10">
                <button class="btn btn-primary pull-right">Submit</button>
              </div>
          </div>	
      </form>
      <hr>
      <div class="row">
        <div class="col-xs-6">
          <h2>Regional Address</h2>
          <address>
            <strong>Business Address</strong><br>
            DN-10 Merlin Matrix<br>
            SaltLake<br>
            Sector V<br>
            Kolkata<br>
            Zip Code 700091<br>
            <abbr title="Phone">P:</abbr> 01234 567 890
          </address>
        </div>
        
      </div><!--/row-->
    </div><!--/col-5-->
    <div class="col-sm-6 map">
      <div class="map-responsive">      
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3684.0599494938992!2d88.43188671436604!3d22.57686103850526!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a0275a58a7349dd%3A0xea05862e50cc0653!2sMerlin+Matrix!5e0!3m2!1sen!2sin!4v1458880934446" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
      </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>