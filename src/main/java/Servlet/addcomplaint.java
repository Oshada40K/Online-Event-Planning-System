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

//inheritance//
@WebServlet("/addcomplaint")
public class addcomplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addcomplaint() {
        super();
     
    }

//abstraction//
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		complaint com =new complaint ();
		
		com.setName(request.getParameter("name"));
		com.setEmail(request.getParameter("email"));
		com.setComplaint(request.getParameter("complaint"));
		
		complaintservice service = new complaintservice();
		service.complaintreg(com);
		
		RequestDispatcher dis = request.getRequestDispatcher("comvalidate.jsp");
	
		dis.forward(request, response);
	}

}
