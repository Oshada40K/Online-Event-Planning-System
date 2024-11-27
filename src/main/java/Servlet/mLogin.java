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
@WebServlet("/mLogin")
public class mLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public mLogin() {
        super();
   
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		StaffModel mgModel = new StaffModel();
		
		mgModel.setUsername(request.getParameter("username"));
		mgModel.setPassword(request.getParameter("password"));

		staffServises mgservice = new 	staffServises();
		boolean status =mgservice.Validate(mgModel);
		
		if(status) {
			
			StaffModel loginedcus = mgservice .getone(mgModel);
			request.setAttribute("mgModel", loginedcus);
			
			RequestDispatcher dis = request.getRequestDispatcher("managerProfile.jsp");//change to home//
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("invalidlg.jsp");
			dis.forward(request, response);
		}
		
	
		
	}

}
