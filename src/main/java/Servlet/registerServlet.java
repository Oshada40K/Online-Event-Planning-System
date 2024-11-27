package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.SupplierModel;
import Services.SupplierServices;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public registerServlet() { 
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SupplierModel supModel = new SupplierModel() ;
		
		supModel.setName(request.getParameter("name"));
		supModel.setEmail(request.getParameter("email"));
		supModel.setUser(request.getParameter("user"));
		supModel.setPassword(request.getParameter("password"));
		
		
		SupplierServices service = new SupplierServices ();
		service.insertData(supModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
		
		
		dis.forward(request, response);
	}

}
