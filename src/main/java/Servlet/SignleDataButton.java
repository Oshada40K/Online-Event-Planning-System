package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Customer;
import Services.CustomerService;


@WebServlet("/SignleDataButton")
public class SignleDataButton extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SignleDataButton() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Customer cus = new Customer();
		cus.setEmail(request.getParameter("email"));
		CustomerService service  = new CustomerService();
		
		Customer customer = service.singleDataButton(cus);
		RequestDispatcher dispatcher = request.getRequestDispatcher("cusProfile.jsp");
		request.setAttribute("Customer", customer);
		dispatcher.forward(request, response);
	}

}
