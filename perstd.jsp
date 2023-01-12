<!DOCTYPE html>
<html lang="en">

<head>

    <%@include file="header.jsp" %>
    <link href="icon.png" rel="shortcut icon"/>

</head>

<body id="page-top">

    <%@include file="sidenav.jsp" %>

  <div id="wrapper">

    <!-- Sidebar -->
    <%@include file="menu1.jsp" %>

     <div id="content-wrapper">

      <div class="container-fluid">

                

  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Check Class</div>
      <div class="card-body">
        <form action="NewStd" method="Post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="name" id="name" class="form-control" name="name" placeholder="register" required="required" autofocus="autofocus">
                  <label for="name">Student Name</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="prn" id="prn" class="form-control" name="prn" placeholder="register" required="required" autofocus="autofocus">
                  <label for="prn">PRN No.</label>
                </div>
              </div>
            </div>
          </div>
            
            
            
            
            
            
          
            <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="text" id="faculty1" class="form-control" placeholder="faculty" name="faculty_id" required="required">
                  <label for="faculty1">Faculty_ID</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="text" id="gender" class="form-control" placeholder="gender" name="subject_id" required="required">
                  <label for="gender">Subject_ID</label>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="number" id="prn"  class="form-control" placeholder="Prn" name="academic_year" required="required">
                  <label for="prn">Academic Year</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="number" id="contact" class="form-control" placeholder="contact" name="division_name" required="required">
                    <label for="contact">Division Name</label>
                </div>
              </div>
               </div>
          </div>
            
           <tr>
              
           <button type="submit" class="btn btn-sm btn-success"><a href="addatt.jsp">ADD</a></button>
                   
               
        </form>
        
      </div>
    </div>
  </div>
       
     <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
 </center>
</body>
        </div>

      </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  