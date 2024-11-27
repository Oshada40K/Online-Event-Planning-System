package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.StaffModel;
import Services.staffServises;

//inheritance//
@WebServlet("/mgUpdate")
public class mgUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public mgUpdate() {
        super();

    }

	//abstraction//
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		StaffModel mgModel = new StaffModel();
		
		
		mgModel.setName(request.getParameter("name"));
		mgModel.setEmail(request.getParameter("email"));
		mgModel.setPhone(request.getParameter("phone"));
		mgModel.setUsername(request.getParameter("username"));
		mgModel.setPassword(request.getParameter("password"));
		
		staffServises mgservice = new 	staffServises();
		
		mgservice.updateData(mgModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("databutton");
		
		dis.forward(request, response);
	}

}

