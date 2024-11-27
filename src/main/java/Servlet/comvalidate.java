package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Model.complaint;
import Services.complaintservice;



@WebServlet("/comvalidate")
public class comvalidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public comvalidate() {
        super();
    
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		complaint com =new complaint ();
		
		
		com.setName(request.getParameter("name"));
		com.setEmail(request.getParameter("email"));
	

		complaintservice service = new complaintservice();
		boolean status=service.comValidate(com);
		
		if(status) {
			
			complaint validatecom= service.getone(com);
			request.setAttribute("complaint", validatecom);
			
			RequestDispatcher dis = request.getRequestDispatcher("comshow.jsp");//change to home//
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("invalidlg.jsp");
			dis.forward(request, response);
		}
		
	
		
		
		
	}

}
