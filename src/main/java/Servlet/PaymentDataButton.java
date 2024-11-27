package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.PaymentGateway;
import Services.CustomerService;


@WebServlet("/PaymentDataButton")
public class PaymentDataButton extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public PaymentDataButton() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PaymentGateway paymentG = new PaymentGateway(); 
		paymentG.setEmail(request.getParameter("email"));
		CustomerService service = new CustomerService();
		
		PaymentGateway payment = service.paymentDataButton(paymentG);
		RequestDispatcher dispatcher = request.getRequestDispatcher("DiplayPayDetails.jsp");
		request.setAttribute("payment", payment);
		dispatcher.forward(request, response);
	}

}
