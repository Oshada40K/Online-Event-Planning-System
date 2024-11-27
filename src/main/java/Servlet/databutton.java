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

@WebServlet("/databutton")
public class databutton extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public databutton() {
        super();
  
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		StaffModel mgModel = new StaffModel();
		mgModel.setEmail(request.getParameter("email"));
		
		staffServises mgservice = new 	staffServises();
		
		StaffModel mgbtn=mgservice.databutton(mgModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("managerProfile.jsp");
		request.setAttribute("mgModel", mgbtn);
		
		dis.forward(request, response);
	}

}
