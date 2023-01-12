<%@page import="com.org.model.StreamDetails,java.util.*;"  %>
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

  <title>Subject Registration Form!!</title>

  
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

 
  <link href="css/sb-admin.css" rel="stylesheet">

</head>



  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Subject Registration</div>
      <div class="card-body">
          <form action="NewSubject" method="Post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="name" id="name" name="subject_name" class="form-control" placeholder="name" required="required" autofocus="autofocus">
                  <label for="name">Subject Name</label>
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
            <div class="form-label-group">
                <input type="classname" id="classname" name="class_name" class="form-control" placeholder="classname" required="required">
              <label for="classname">Class Name</label>
            </div>
          </div>
            <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="semname" id="semname" name="semester_name" class="form-control" placeholder="semname" required="required">
                  <label for="semname">Semester Name</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="actstatus" id="actstatus" name="active_status" class="form-control" placeholder="actstatus" required="required">
                  <label for="actstatus">Active Status</label>
                </div>
              </div>
            </div>
          </div>
          <button type="submit" class="btn btn-sm btn-success">ADD</button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="teacherlogin.jsp">Login Page</a>
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
