package com.Servlet_Configuration;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.NoteTaker;
import com.hibernate_Configuration.hibernate_Configuration;


@WebServlet("/AddNote_Servlet")
public class AddNote extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			
			
			String title = request.getParameter("noteTitle");
			String content = request.getParameter("noteContent");
			
		NoteTaker note = new NoteTaker(title, content,new Date());
		
		Session openSession = hibernate_Configuration.openFactory().openSession();
		Transaction beginTransaction = openSession.beginTransaction();
		
		openSession.save(note);
		
		beginTransaction.commit();
		openSession.close();
					
					response.setContentType("text/html");
					PrintWriter writer=response.getWriter();
					writer.print("<h3 style='text-align:center'>Your response is saved successfully into Notes Directory</h3>");
					writer.print("<h2 style='text-align:center'><a href='NotesDirectory.jsp'>click here</a></h3>");
					
		} catch (Exception e) {
			// TODO: handle exception

		e.printStackTrace();
		
		
		}
		
		
		
	}

}
