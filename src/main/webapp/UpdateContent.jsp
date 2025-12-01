<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.entity.*,com.hibernate_Configuration.*,com.Servlet_Configuration.*" %>  
 <%@ page isELIgnored="false" %>
  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@include file="Bootstrap.jsp" %>

<title>Update Content</title>
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@include file="Navbar.jsp" %>
    <br>
    <%
    
    int note_id=Integer.parseInt(request.getParameter("note_id"));
	
	Session s=hibernate_Configuration.openFactory().openSession();
	
	Transaction beginTransaction = s.beginTransaction();
	
	NoteTaker note = s.get(NoteTaker.class, note_id);	
	
	request.setAttribute("note", note);
	
    %>
    
		<div class="container">
			<h2 class="text-center">Update Note !</h2><hr>
			
<!--  Form to add notes  -->
			
			<form action="UpdateServlet" method="post">
				<div class="form_group mb-3">
					<input type="hidden" name="noteid" value="${note.note_id}">
					<label for="noteTitle" class="form-label">Note Title :</label> 
					<input
						type="text" 
						class="form-control" 
						id="noteTitle" 
						name="noteTitle"
						placeholder="Enter Note Title" 
						required value="${note.title}"
						/>
				</div>
				
					
					<div class="form-group mb-3">
					<label for="noteContent" class="form-label">Note Content :</label>
  			<textarea 
  				class="form-control" 
  				placeholder="Enter Note Content Here" 
  				id="noteContent"
  				name="noteContent"
  				required 
  				style="height: 200px;">${note.content}</textarea>
  				
				</div>
								
				<div class="container-fluid text-center">
				<button type="submit" class="btn btn-success ">Update</button>
				</div>
				
				
			</form>
		</div>
	</div>	


</body>
</html>