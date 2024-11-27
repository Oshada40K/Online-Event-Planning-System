package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.addorderModel;
import Services.addorderservice;


@WebServlet("/confirmorderservlet")
public class confirmorderservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public confirmorderservlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		addorderModel addModel = new addorderModel();
		
		addModel.setName(request.getParameter("name"));
		addModel.setEmail(request.getParameter("email"));
		
		addorderservice addservice = new addorderservice();
		boolean status = addservice.confirmorder(addModel);
		
		if(status) {
			
			addorderModel addnewModel = addservice.oneorder(addModel);
			RequestDispatcher dis = request.getRequestDispatcher("orderdetails.jsp");
			request.setAttribute("service",addnewModel);
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("confirmorder.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
