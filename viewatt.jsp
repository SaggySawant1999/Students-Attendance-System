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
    <%@include file="menu2.jsp" %>

     <div id="content-wrapper">

      <div class="container-fluid">

                

  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Attendance!!</div>
      <div class="card-body">
        <form action="NewStd" method="Post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="date" id="date" class="form-control" name="date" pattern="dd/mm/yyyy" placeholder="register" required="required" autofocus="autofocus">
                  <label for="date">Enter Date</label>
                </div>
              </div>
              
            </div>
          </div>
         
           <button type="submit" class="btn btn-sm btn-success"><a href="##.jsp">CHECK</a></button>
                   
               
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
  