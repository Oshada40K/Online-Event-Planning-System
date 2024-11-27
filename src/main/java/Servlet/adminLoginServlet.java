package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.adminModel;
import Services.adminService;

@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public adminLoginServlet() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    adminModel adModel = new adminModel();
	    
	    adModel.setUsername(request.getParameter("username"));
	    adModel.setPassword(request.getParameter("password"));
	    
	    adminService adservice = new adminService();
	    boolean status = adservice.validate(adModel);
	    
	    if(status) {
	    	adminModel loginedcus = adservice.getone(adModel);
	    	request.setAttribute("adminModel",loginedcus);
	    	RequestDispatcher dispatcher = request.getRequestDispatcher("adminProfile.jsp");
	    	dispatcher.forward(request, response);
	    }
	    else {
	    	RequestDispatcher dispatcher = request.getRequestDispatcher("NewLogIn.jsp");
	    	dispatcher.forward(request, response);
	    }
		doGet(request, response);
	}

}