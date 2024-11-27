package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Customer;
import Services.CustomerService;


@WebServlet("/AdminCustomers")
public class AdminCustomers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminCustomers() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CustomerService service = new CustomerService();
		ArrayList<Customer> customer = service.getAllCustomer();
		request.setAttribute("Customer", customer);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cusAdminTable.jsp");
		dispatcher.forward(request, response);
	}

}
