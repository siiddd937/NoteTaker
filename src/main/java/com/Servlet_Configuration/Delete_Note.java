package com.Servlet_Configuration;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.NoteTaker;
import com.hibernate_Configuration.hibernate_Configuration;

@SuppressWarnings("serial")
@WebServlet("/DeleteServlet")
public class Delete_Note extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			int note_id=Integer.parseInt(req.getParameter("note_id").trim());
			
			Session session=hibernate_Configuration.openFactory().openSession();
			
			Transaction beginTransaction = session.beginTransaction();
			
			NoteTaker noteTaker = session.get(NoteTaker.class, note_id);
			
			session.delete(noteTaker);
			
			beginTransaction.commit();
			session.close();
			
			resp.sendRedirect("NotesDirectory.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
	}
}
