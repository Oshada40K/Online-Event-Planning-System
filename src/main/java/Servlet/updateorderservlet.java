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


@WebServlet("/updateorderservlet")
public class updateorderservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public updateorderservlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        addorderModel addModel = new addorderModel();
		
		addModel.setName(request.getParameter("name"));
		addModel.setEmail(request.getParameter("email"));
		addModel.setService(request.getParameter("service"));
		addModel.setAmount(request.getParameter("amount"));
		
		addorderservice addservice = new addorderservice();
		addservice.updateorder(addModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("singalorderservlet");
				 
		dis.forward(request, response);
	}

}
