package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.complaint;
import Services.complaintservice;

@WebServlet("/comtable")
public class comtable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public comtable() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		complaintservice service = new complaintservice();
		ArrayList<complaint> complaint=service.getAllcomplaint();
		request.setAttribute("complaint", complaint);
		
		RequestDispatcher dis = request.getRequestDispatcher("comtable.jsp");//change to home//
		dis.forward(request, response);
	}

}
