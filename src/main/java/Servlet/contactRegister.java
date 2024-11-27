package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.adminModel;
import Model.contactModel;
import Services.adminService;
import Services.contactService;


@WebServlet("/contactRegister")
public class contactRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public contactRegister() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		contactModel con = new contactModel();
		
		con.setName(request.getParameter("name"));
		con.setEmail(request.getParameter("email"));
		con.setMassage(request.getParameter("massage"));
		
		contactService conservice = new contactService();
		
		conservice.contactData(con);
		
		RequestDispatcher dis = request.getRequestDispatcher("contactdetail.jsp");
	
		dis.forward(request, response);
	}

}
