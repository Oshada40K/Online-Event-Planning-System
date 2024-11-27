package Servlet;

import java.io.IOException;
import java.util.ArrayList;

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


@WebServlet("/contactlist")
public class contactlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public contactlist() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		contactService conservice = new contactService(); 
       ArrayList<contactModel> contactModel = conservice.getAllcontact();
	   request.setAttribute("contact",contactModel);
	   
	   RequestDispatcher dispatcher = request.getRequestDispatcher("contacttable.jsp");
	   
		dispatcher.forward(request, response);
	}

}
