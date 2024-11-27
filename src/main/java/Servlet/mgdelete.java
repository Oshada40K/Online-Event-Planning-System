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
@WebServlet("/mgdelete")
public class mgdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public mgdelete() {
        super();
     
    }

  //abstraction//
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	//polymorphism//
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		StaffModel mgModel = new StaffModel();
		mgModel.setEmail(request.getParameter("email"));
		
		staffServises mgservice = new 	staffServises();
		mgservice.deleteData(mgModel);
		
		RequestDispatcher dis=request.getRequestDispatcher("mgcustomer");
		
		dis.forward(request, response);
	}

}
