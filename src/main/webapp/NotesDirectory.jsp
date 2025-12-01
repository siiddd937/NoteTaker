<%@page import="com.entity.NoteTaker"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
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
        Session s= hibernate_Configuration.openFactory().openSession();
            Query q =s.createQuery("from NoteTaker");
            List<NoteTaker> list= q.list(); 
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
    </div>
    
    
    
    
    
    
    
</div>
    
    
    

</body>
</html>