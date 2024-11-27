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


@WebServlet("/singleDataButton")
public class singleDataButton extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public singleDataButton() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SupplierModel supModel = new SupplierModel() ;
		supModel.setEmail(request.getParameter("email"));
		
		SupplierServices service = new SupplierServices() ;
		
		SupplierModel sup = service.singleDataButton(supModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("profile.jsp") ;
		request.setAttribute("customer",sup);
		
		
		dis.forward(request, response);
	}

}
