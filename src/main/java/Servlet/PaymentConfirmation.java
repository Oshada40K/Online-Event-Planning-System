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

@WebServlet("/PaymentConfirmation")
public class PaymentConfirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public PaymentConfirmation() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PaymentGateway paymentG = new PaymentGateway();
		
		paymentG.setFname(request.getParameter("fname"));
		paymentG.setEmail(request.getParameter("email"));
		
		CustomerService service = new CustomerService();
		
		boolean status = service.validatePayment(paymentG);
		
		if(status) {
			PaymentGateway paidG = service.getOnePay(paymentG);
			RequestDispatcher dispatcher = request.getRequestDispatcher("DiplayPayDetails.jsp");
			request.setAttribute("payment", paidG);
			dispatcher.forward(request,response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Payment.jsp");
			dispatcher.forward(request,response);
		}
		
		
	}

}
