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


@WebServlet("/deleteSupplier")
public class deleteSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public deleteSupplier() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SupplierModel supModel = new SupplierModel();
		
		supModel.setEmail(request.getParameter("email"));
		
		SupplierServices service = new SupplierServices();
		
		service.deleteSupplier(supModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("AdminSuppliers");
		
		dis.forward(request, response);
	}

}
