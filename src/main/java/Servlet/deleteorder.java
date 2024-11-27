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


@WebServlet("/deleteorder")
public class deleteorder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public deleteorder() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 addorderModel addModel = new addorderModel();
		 addModel.setEmail(request.getParameter("email"));
		 
		 addorderservice addservice = new addorderservice();
		 
		addservice.deleteorder(addModel);
		RequestDispatcher dispatcher = request.getRequestDispatcher("orderlistservlet");
		
		dispatcher.forward(request, response);
	}

}
