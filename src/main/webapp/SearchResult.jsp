<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.entity.NoteTaker" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="Bootstrap.jsp" %>
<title>Searched Result</title>
</head>
<body>
<div class="container-fluid p-0 m-0">
<%@ include file="Navbar.jsp" %>
		

<div class="container">
    <div class="row">   
    <div class="col-12">
	
<h2 class="text-center mt-3">Search Results for ${keyword}</h2>
<hr>

    

        <%
        List<NoteTaker> notes = (List<NoteTaker>) request.getAttribute("searchResult");

        if (notes != null && !notes.isEmpty()) {
            for (NoteTaker note : notes) {
        %>
		
	 
    
            <div class="card mt-2" style="width: 70rem;">
  			<div class="card-body">
                <h4><%= note.getTitle() %></h4>
                <p><%= note.getContent().length() > 100 ? note.getContent().substring(0,100)+"..." : note.getContent() %></p>
				<div class="container d-flex justify-content-between p-2 ">
                <a href="UpdateContent.jsp?note_id=<%=note.getNote_id() %>" class="btn btn-success">Update</a>
    			<a href="DeleteServlet?note_id=<%=note.getNote_id() %>" class="btn btn-danger">Delete</a>
           
            </div>
        </div>
        
 
        <%  }
        } 
        
        else { %>
        <h4 class="text-center text-danger">No notes found!</h4>
        <% } %>
    </div>
    
    
</div>
</div>
</div>
</div>






</body>
</html>