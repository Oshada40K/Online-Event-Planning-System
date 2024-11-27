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
import Services.adminService;

@WebServlet("/admincustomer")
public class admincustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public admincustomer() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		adminService adservice = new adminService();
		ArrayList<adminModel> adminModel = adservice.getAllCustomer();	
		request.setAttribute("admin",adminModel);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("admintable.jsp");
		dispatcher.forward(request, response);
	}

}
