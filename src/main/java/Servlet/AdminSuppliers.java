package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.SupplierModel;
import Services.SupplierServices;


@WebServlet("/AdminSuppliers")
public class AdminSuppliers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdminSuppliers() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SupplierServices service = new SupplierServices();
		
		ArrayList<SupplierModel> supModel = service.getAllSupplier();
		request.setAttribute("supplier",supModel);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("SupplierTable.jsp") ;
		
		dispacher.forward(request, response);
	}

}
