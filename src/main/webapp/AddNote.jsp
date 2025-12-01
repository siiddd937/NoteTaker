<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="Bootstrap.jsp" %>

<title>Add-Notes</title>
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@include file="Navbar.jsp" %>
    <br>
		<div class="container">
			<h2 class="text-center">Add Your Notes...</h2><hr>
			
<!--  Form to add notes  -->
			
			<form action="AddNote_Servlet" method="post">
				<div class="form_group mb-3">
					<label for="noteTitle" class="form-label">Note Title :</label> 
					<input
						type="text" 
						class="form-control" 
						id="noteTitle" 
						name="noteTitle"
						placeholder="Enter Note Title" 
						required
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
  				style="height: 200px;"
  				></textarea>
  				
				</div>
					
				
				
				<div class="container-fluid text-center">
				<button type="submit" class="btn btn-success ">Add Note</button>
				</div>
				
				
			</form>
		</div>
	</div>	
		</body>
</html>