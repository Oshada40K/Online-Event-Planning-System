package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.PaymentGateway;
import Services.CustomerService;


@WebServlet("/TablePaymentSercve")
public class TablePaymentSercve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public TablePaymentSercve() {
        super();
        }
        

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerService service = new CustomerService();
		ArrayList<PaymentGateway> payment = service.getAllPayments();
		request.setAttribute("payment", payment);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("PaymentTable.jsp");
		dispatcher.forward(request, response);
	}

}
