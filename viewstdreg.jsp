<html lang="en">

<head>
<%@page import="com.org.model.*,java.util.*;" %>
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
            All Student Data Table</div>
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
               
                  <tr>
                    <th>ID</th>
                    <th>Register Year</th>
                    <th>Stream ID</th>
                    <th>Std Name</th>
                    <th>PRN No.</th>
                    <th>Std Gender</th>
                    <th>Std Contact</th>
                    <th>Std E-Mail</th>
                    <th>Std Pass</th>
                    <th><a href="updatestd.jsp"> Update</a></th>
                    <th><a href="deletestd.jsp"> Delete</a></th>
                  </tr>
                  <%
                  StudentDetails sd=new StudentDetails();
                  ArrayList<StudentDetails> al=sd.getallStudentDetailses();
                   Iterator it=al.iterator();
                    int x=0;
                    while(it.hasNext()){
                        
                        x++;
                        StudentDetails s=(StudentDetails)it.next();
                        StreamDetails st=new StreamDetails();
                        st.getOneStream(s.getStream_id());

                  %>    
                  <tr>
                <td><%=x%></td>
                <td><%=s.getReg_year()%></td>
                <td><%=st.getStream_name()%></td>
                <td><%=s.getStd_name()%></td>
                <td><%=s.getPrn_no()%></td>
                <td><%=s.getStd_gender()%></td>
                <td><%=s.getStd_contact()%></td>
                <td><%=s.getStd_email()%></td>
                <td><%=s.getStd_pass()%></td>
                <td><a href="editpcat.jsp?pcat_id=<%=s.getId()%>"><i class="fa fa-edit"></i> Update</a></td>
                <td><a href="deletepcat.jsp?pcat_id=<%=s.getId()%>"><i class="fa fa-trash"></i> Delete</a></td>
            </tr>
            <%
                    }%>
                
                
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
            <span>Copyright � Your Website 2019</span>
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
            <span aria-hidden="true">�</span>
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
