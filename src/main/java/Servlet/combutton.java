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
@WebServlet("/combutton")
public class combutton extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public combutton() {
        super();
     
    }

	//abstraction//
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		complaint com =new complaint ();
		com.setEmail(request.getParameter("email"));
		
		complaintservice service = new complaintservice();
		
		complaint complaint =service.combutton(com);
		
		RequestDispatcher dis = request.getRequestDispatcher("comshow.jsp");
		request.setAttribute("complaint", complaint);
		
		dis.forward(request, response);
	}

}
