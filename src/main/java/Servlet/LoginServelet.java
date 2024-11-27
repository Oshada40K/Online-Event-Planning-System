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


@WebServlet("/LoginServelet")
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Customer cus = new Customer();
		
		cus.setEmail(request.getParameter("email"));
		cus.setPassword(request.getParameter("password"));
		
		CustomerService service = new CustomerService();
		boolean status = service.validate(cus);
		
		if(status) {
			Customer loginedCus = service.getOne(cus);
			RequestDispatcher dispatcher = request.getRequestDispatcher("cusProfile.jsp");
			request.setAttribute("Customer", loginedCus);
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("cusLogin.jsp");
			dispatcher.forward(request, response);
		}
	}

}
