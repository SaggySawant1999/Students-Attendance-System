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

  <title>Teacher Registration Form!!</title>
  

  
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

 
  <link href="css/sb-admin.css" rel="stylesheet">

</head>



  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Teacher Registration</div>
      <div class="card-body">
        <form action="NewTeacher" method="Post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="email" id="email" name="email" class="form-control" placeholder="email" required="required" autofocus="autofocus">
                  <label for="email">Teacher E-Mail</label>
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
              <input type="text" id="name" name="name" class="form-control" placeholder="name" required="required">
              <label for="name">Teacher Full Name(Last Name - First Name - Surname)</label>
            </div>
          </div>
            <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="contact" id="contact" name="contact" class="form-control" placeholder="contact" required="required">
                  <label for="contact">Teacher Contact</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="text" id="gender" name="gender" class="form-control" placeholder="gender" required="required">
                  <label for="gender">Teacher Gender</label>
                </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="subject" id="subject" name="subject_name" class="form-control" placeholder="subject" required="required">
                  <label for="subject">Subject</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                    <input type="password" id="password" name="password" class="form-control" placeholder="password" required="required">
                  <label for="password">Password</label>
                </div>
              </div>
                <br>
                
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
