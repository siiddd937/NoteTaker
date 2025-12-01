package com.Servlet_Configuration;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.entity.NoteTaker;
import com.hibernate_Configuration.hibernate_Configuration;

@SuppressWarnings("serial")
@WebServlet("/SearchMyNote")
public class SearchNote extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		try {
			
			String keyword = req.getParameter("keyword");

            Session s = hibernate_Configuration.openFactory().openSession();

            // HQL Query → Find notes where title contains keyword
            String hql = "FROM NoteTaker n WHERE n.title LIKE :k";
            Query q = s.createQuery(hql);
            q.setParameter("k", "%" + keyword + "%");

            List<NoteTaker> resultList = q.list();

            req.setAttribute("searchResult", resultList);
            req.setAttribute("keyword", keyword);

            s.close();

            // Forward to JSP for display
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("SearchResult.jsp");
            
            requestDispatcher.forward(req, resp);
            
            return;
            

        } catch (Exception e) {
            e.printStackTrace();
        }
			
		
		
		
		
	}
	

}
