<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<%@include file="Bootstrap.jsp" %>
	
    <title>Welcome! Note-Taker</title>
  </head>
  <body>
   
   <div class="container-fluid p-0 m-0">
    <%@include file="Navbar.jsp" %>
    
    <!-- Hero Section -->
    <div class="hero-section position-relative">
        <div class="overlay"></div>
        <div class="hero-content text-center">
            <h1 class="display-3 fw-bold">Welcome to NoteTaker</h1>
            <p class="lead fs-4 text-light">Your Personal Online Notes Manager - Fast, Simple & Secure</p>
            <a href="AddNote.jsp" class="btn btn-success btn-lg mt-3">Create New Note</a>
            <a href="NotesDirectory.jsp" class="btn btn-outline-light btn-lg mt-3">View Saved Notes</a>
        </div>
    </div>

    <!-- Features Section -->
    <div class="container my-5">
        <h2 class="text-center mb-4 fw-bold">Why Use NoteTaker?</h2>

        <div class="row text-center">
            <div class="col-md-4 mb-4">
                <div class="card p-4 shadow-sm">
                   <i class="bi bi-pencil-square feature-icon mb-3"></i>
                    <h5 class="fw-bold">Create Notes Easily</h5>
                    <p>Store your ideas, tasks, and reminders with our clean and simple note editor.</p>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card p-4 shadow-sm">
                     <i class="bi bi-pencil feature-icon mb-3"></i>
                    <h5 class="fw-bold">Update Anytime</h5>
                    <p>Edit your notes effortlessly. Every change updates instantly in the database.</p>
                </div>
            </div>

            <div class="col-md-4 mb-4">
                <div class="card p-4 shadow-sm">
                      <i class="bi bi-shield-lock feature-icon mb-3"></i>
                    <h5 class="fw-bold">Secure Storage</h5>
                    <p>Your notes are safely stored using Hibernate ORM for reliable performance.</p>
                </div>
            </div>
        </div>
    </div>

    <!-- About Section -->
    <div class="container my-5">
        <div class="row align-items-center">
            <div class="col-md-6">
                <img src="NoteTaker_design_page-0001.jpg" class="img-fluid rounded shadow" alt="Note Image">
            </div>
            <div class="col-md-6">
                <h2 class="fw-bold">Stay Organized, Stay Productive</h2>
                <p class="mt-3 fs-5">
                    NoteTaker is designed to help you manage your daily tasks, reminders, thoughts, and important ideas-
                    all in one secure place. Built using <strong>Servlets, JSP, and Hibernate</strong>, the app ensures speed,
                    simplicity, and reliability.
                </p>
                <a href="NotesDirectory.jsp" class="btn btn-primary mt-2">Explore Your Notes</a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">
        <p class="m-0 fs-6"> ©2025 NoteTaker by Siddhesh Deshmukh | Designed using "Servlets, JSP & Hibernate"</p>
    </footer>
    
    
    
   
   </div>

   
  </body>
</html>
