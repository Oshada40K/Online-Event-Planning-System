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


@WebServlet("/adminRegisterServlet")
public class adminRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public adminRegisterServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 adminModel adModel = new adminModel();
		 
		 adModel.setName( request.getParameter("name"));
		 adModel.setEmail( request.getParameter("email"));
		 adModel.setPassword( request.getParameter("password"));
		 adModel.setUsername(request.getParameter("username"));
		 
		adminService adservice = new adminService();
		
		adservice.insertData(adModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("NewLogIn.jsp");
		 
		dis.forward(request, response);
	}

}
