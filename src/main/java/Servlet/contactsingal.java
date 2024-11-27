package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.contactModel;
import Services.contactService;


@WebServlet("/contactsingal")
public class contactsingal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public contactsingal() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		contactModel con = new contactModel();
		con.setEmail(request.getParameter("email"));
		
		contactService conservice = new contactService();
		contactModel con1 = conservice.congetone(con);
		
		RequestDispatcher dis = request.getRequestDispatcher("");
		request.setAttribute("contact",con1);
		
		dis.forward(request, response);
	}

}
