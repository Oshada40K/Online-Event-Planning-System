package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.addorderModel;
import Services.addorderservice;


@WebServlet("/orderlistservlet")
public class orderlistservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public orderlistservlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		addorderservice addservice = new addorderservice();
		ArrayList<addorderModel> addModel = addservice.getallorders();		
		request.setAttribute("service", addModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("orderlist.jsp");
		dis.forward(request, response);
	}

}
