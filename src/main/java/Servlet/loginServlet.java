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


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
     
    public loginServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SupplierModel supModel = new SupplierModel();
		
		supModel.setUser(request.getParameter("user"));
		supModel.setPassword(request.getParameter("password"));
		
		
		SupplierServices service = new SupplierServices();
		boolean status = service.validate(supModel) ;
		
		if(status) {
			SupplierModel loginedCus = service.getOne(supModel);
			RequestDispatcher dis = request.getRequestDispatcher("profile.jsp") ;
			request.setAttribute("customer", loginedCus);
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp") ;
			dis.forward(request, response);
		}
		
	
	}

}
