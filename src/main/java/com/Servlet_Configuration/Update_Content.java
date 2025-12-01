package com.Servlet_Configuration;

import java.io.IOException;
import java.util.Date;

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
@WebServlet("/UpdateServlet")
public class Update_Content extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		try {
			
			int note_id=Integer.parseInt(req.getParameter("noteid"));
			String title = req.getParameter("noteTitle");
			String content = req.getParameter("noteContent");
			
			Session s= hibernate_Configuration.openFactory().openSession();
			
			Transaction beginTransaction = s.beginTransaction();
			
			NoteTaker noteTaker =(NoteTaker) s.get(NoteTaker.class, note_id);
			
			noteTaker.setTitle(title);
			noteTaker.setContent(content);
			noteTaker.setAddedDate(new Date());
			
			
			
			beginTransaction.commit();
			s.close();
			
			resp.sendRedirect("NotesDirectory.jsp");
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		
		
		
		
		
	}
}
