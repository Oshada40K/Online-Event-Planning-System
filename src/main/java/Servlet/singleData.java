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


@WebServlet("/singleData")
public class singleData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public singleData() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		adminModel adModel = new adminModel();
		adModel.setEmail(request.getParameter("email"));
		
		adminService adservice = new adminService();
		adminModel  adminModel = adservice.singleData(adModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("adminProfile.jsp");
		request.setAttribute("adminModel",adminModel);
		dis.forward(request, response);
	}

}
