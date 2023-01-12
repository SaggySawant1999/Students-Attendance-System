<%@page import="com.org.model.StreamDetails,java.util.*;"  %>
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

    <div id="content-wrapper">

      <div class="container-fluid">

                

  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Student Enrollement</div>
      <div class="card-body">
        <form action="NewStd" method="Post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="number" id="register" class="form-control" name="std_year" placeholder="register" required="required" autofocus="autofocus">
                  <label for="register">Student ID</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                    <select name="stream_id" class="form-control" required>
                        <option value="">Select stream</option>
                        <%
                        StreamDetails s=new StreamDetails();
                    ArrayList<StreamDetails> al=s.getallStreamDetails();
                    Iterator it=al.iterator();
                    while(it.hasNext()){
                        StreamDetails s1=(StreamDetails)it.next();
                        %>
                         <option value="<%=s1.getId()%>"><%=s1.getStream_name()%></option>
                        <%
                    }
                        %>
                    </select>
                  
                </div>
              </div>
            </div>
          </div>
          <div class="form-group">
              <div class="form-row">
              <div class="col-md-6">
            <div class="form-label-group">
              <input type="text" id="name" class="form-control" placeholder="name" name="academic_year" required="required">
              <label for="name">Academic Year</label>
            </div>
          </div>
            
            
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="text" id="Email" class="form-control" placeholder="Email" name="class_name" required="required">
                  <label for="Email">Class Name</label>
                </div>
              </div>
            </div>
              </div>
                    
                    
            <div class="form-group">
              <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="text" id="gender" class="form-control" placeholder="gender" name="div_name" required="required">
                  <label for="gender">Division Name</label>
                </div>
              </div>
            
           
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="number" id="prn"  class="form-control" placeholder="Prn" name="roll_no" required="required">
                  <label for="prn">Roll No</label>
                </div>
              </div>
               
              
                
            </div>
         
            </div>
                    
           <tr>
              
                         <button type="submit" class="btn btn-sm btn-success">ADD</button>
                   
               
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="login.html">Login Page</a>
          <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
        </div>
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
     

   
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Are you sure want to logout?</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="alllogin.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>
 

</body>

</html>
