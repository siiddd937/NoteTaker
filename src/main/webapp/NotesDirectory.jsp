<%@page import="com.entity.NoteTaker"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.hibernate_Configuration.hibernate_Configuration"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="Bootstrap.jsp" %>
<title>Note-Directory</title>
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@include file="Navbar.jsp" %>
    <br>
    
    <div class="container">
    <div class="row">   
    <div class="col-12">
    
    <%
    
    int pageNO = 1;
    int recordsPerPage = 3;  // how many notes per page

    if(request.getParameter("page") != null){
        pageNO = Integer.parseInt(request.getParameter("page"));
    }

    Session s = hibernate_Configuration.openFactory().openSession();

    // Query to get paginated notes
    Query q = s.createQuery("from NoteTaker");
    q.setFirstResult((pageNO - 1) * recordsPerPage);
    q.setMaxResults(recordsPerPage);
    List<NoteTaker> list = q.list();

    // Query to count total notes
    Query countQuery = s.createQuery("select count(*) from NoteTaker");
    Long totalRecords = (Long) countQuery.uniqueResult();
    
    int totalPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

            for (NoteTaker n : list) {
        %>
    
   <div class="card mt-2" style="width: 70rem;">
  <div class="card-body">
    <h5 class="card-title"><%=n.getTitle() %></h5>
    <p class="card-text"><%=n.getContent() %></p>
    <div class="container d-flex justify-content-between p-2 ">
    <a href="UpdateContent.jsp?note_id=<%=n.getNote_id() %>" class="btn btn-success">Update</a>
    <a href="DeleteServlet?note_id=<%=n.getNote_id() %>" class="btn btn-danger">Delete</a>
    </div>
  </div>
</div>
    
    
    <%
    }
    s.close();
    
    %>
    
    </div>   
    </div>
    
    <!-- Pagination Code -->
    
    <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center mt-4">

    <!-- Previous Button -->
    <li class="page-item <%= (pageNO == 1) ? "disabled" : "" %>">
      <a class="page-link" href="NotesDirectory.jsp?page=<%=pageNO-1%>">Previous</a>
    </li>

    <!-- Page Numbers -->
    <% 
      for(int i = 1; i <= totalPages; i++){ 
    %>
        <li class="page-item <%= (i == pageNO) ? "active" : "" %>">
            <a class="page-link" href="NotesDirectory.jsp?page=<%=i%>">
                <%=i%>
            </a>
        </li>
    <% } %>

    <!-- Next Button -->
    <li class="page-item <%= (pageNO == totalPages) ? "disabled" : "" %>">
      <a class="page-link" href="NotesDirectory.jsp?page=<%=pageNO+1%>">Next</a>
    </li>

  </ul>
</nav>
    
        
    </div>    
    
</div>    

</body>
</html>
