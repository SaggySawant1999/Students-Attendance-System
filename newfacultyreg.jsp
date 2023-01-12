<!DOCTYPE html>
<html lang="en">

<head>

    <%@include file="header.jsp" %>

</head>

<body id="page-top">

    <%@include file="sidenav.jsp" %>

  <div id="wrapper">

    <!-- Sidebar -->
    <%@include file="menu.jsp" %>

    <html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Faculty Registration Form!!</title>

  
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

 
  <link href="css/sb-admin.css" rel="stylesheet">

</head>



  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Faculty Registration</div>
      <div class="card-body">
          <form method="post" action="NewFaculty">
          <div class="form-group">
            <div class="form-label-group">
              <input type="text" id="name" name="faculty_name" class="form-control" placeholder="name" required="required">
              <label for="name">Faculty Name</label>
            </div>
          </div>
            <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="email" id="email" name="faculty_email" class="form-control" placeholder="email" required="required">
                  <label for="email">Faculty E-Mail</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="contact" id="contact" name="faculty_contact" class="form-control" placeholder="contact" required="required">
                  <label for="contact">Faculty Contact</label>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="password" id="password" name="faculty_password" class="form-control" placeholder="password" required="required">
                  <label for="password">Faculty Password</label>
                </div>
              </div>
                         
            </div>
          </div>
          <button type="submit" class="btn btn-sm btn-success">ADD</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="login.html">Login Page</a>
          <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
