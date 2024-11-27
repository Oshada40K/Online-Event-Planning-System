package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.StaffModel;
import Services.staffServises;
//inheritance//
@WebServlet("/mgcustomer")
public class mgcustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public mgcustomer() {
        super();
    
    }

  //abstraction//
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*meva dpn minethge eva*/
		staffServises mgservice = new 	staffServises();
		ArrayList<StaffModel> customer =mgservice.getAllcustomer();
		request.setAttribute("mgcus", customer);
		
		RequestDispatcher dis = request.getRequestDispatcher("managertabale.jsp");;
		
		dis.forward(request, response);
	}

}
