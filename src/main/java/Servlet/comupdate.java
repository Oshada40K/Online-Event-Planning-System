package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.complaint;
import Services.complaintservice;


@WebServlet("/comupdate")
public class comupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public comupdate() {
        super();
 
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		complaint com =new complaint ();
		
		com.setName(request.getParameter("name"));
		com.setEmail(request.getParameter("email"));
		com.setComplaint(request.getParameter("complaint"));
	
		complaintservice service = new complaintservice();
		service .comupdate(com);
		
		RequestDispatcher dis = request.getRequestDispatcher("combutton");//change to home//
		dis.forward(request, response);
	}

}
