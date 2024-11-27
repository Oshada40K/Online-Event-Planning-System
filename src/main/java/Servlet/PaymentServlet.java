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


@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PaymentServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PaymentGateway paymentG = new PaymentGateway();
		
		paymentG.setFname(request.getParameter("fname"));
		paymentG.setEmail(request.getParameter("email"));
		paymentG.setAddress(request.getParameter("address"));
		paymentG.setCity(request.getParameter("city"));
		paymentG.setState(request.getParameter("state"));
		paymentG.setZip(Integer.parseInt(request.getParameter("zip")));
		paymentG.setCardname(request.getParameter("cardname"));
		paymentG.setCardnumber(request.getParameter("cardnumber"));
		paymentG.setExpmonth(request.getParameter("expmonth"));
		paymentG.setCvv(Integer.parseInt(request.getParameter("cvv")));
		
		
		
		CustomerService service = new CustomerService();
		try {
			service.doPayment(paymentG);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ConfirmPayment.jsp");
		
		dispatcher.forward(request, response);
	}

}
