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

 
@WebServlet("/DeletePayment")
public class DeletePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
    public DeletePayment() {
        super();
        
    }

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PaymentGateway paymentG = new PaymentGateway();
		
		paymentG.setEmail(request.getParameter("email"));
		
		CustomerService service = new CustomerService();
		service.deletePayment(paymentG);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("TablePaymentSercve");
		dispatcher.forward(request, response);
	}

}
