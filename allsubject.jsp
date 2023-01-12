<%@page import="com.org.model.*,java.util.*;" %>
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

        

        <!-- Icon Cards-->
        

        <!-- Area Chart Example-->
       

        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i>
            All Subject Data Table</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Subject Name</th>
                    <th>Stream-Id</th>
                    <th>Class Name</th>
                    <th>Semester Name</th>
                    <th>Active Status</th>
                    <th><a href="updatestd.jsp"> Update</a></th>
                    <th><a href="deletestd.jsp"> Delete</a></th>
                  </tr>
                </thead>
                <%
                    SubjectDetails sd=new SubjectDetails();
                    ArrayList<SubjectDetails> al=sd.getAllSubjectDetails();
                    Iterator it=al.iterator();
                    int x=0;
                    while(it.hasNext()){
                        x++;
                        SubjectDetails s=(SubjectDetails)it.next();
                                     
                %>
                <tr><%=x%></tr>
                <tr><%=s.getSubject_name()%></tr>
                <tr><%=s.getStream_id()%></tr>
                <tr><%=s.getClass_name()%></tr>
                <tr><%=s.getSemester_name()%></tr>
                <tr><%=s.getActive_status()%></tr>
                <td><a href="editpcat.jsp?pcat_id=<%=s.getId()%>"><i class="fa fa-edit"></i> Update</a></td>
                <td><a href="deletepcat.jsp?pcat_id=<%=s.getId()%>"><i class="fa fa-trash"></i> Delete</a></td>
            
                <% 
                    }
                    %>
                
              </table>
            </div>
          </div>
          </div>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright © Your Website 2020</span>
          </div>
        </div>
      </footer>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
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
        <div class="modal-body">Are you sure to logout?</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="logout.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
  <script src="js/demo/chart-area-demo.js"></script>

</body>

</html>
