package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studentRegistration.model.DAOServiceImpl;
import com.studentRegistration.model.DAOServices;

@WebServlet("/saveRegistration")
public class SaveRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SaveRegistration() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		HttpSession session = request.getSession(false);
		session.setMaxInactiveInterval(10);
		if(session.getAttribute("email")!=null) {
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/saveRegistration.jsp");
	  rd.forward(request, response);
		
		}else {
			 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
		}
		}catch(Exception e){
			 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		HttpSession session = request.getSession(false);
		session.setMaxInactiveInterval(10);
		if(session.getAttribute("email")!=null) {
			
		String name = request.getParameter("name");
	   String city = request.getParameter("city");
	   String email = request.getParameter("email");
	   String mobile = request.getParameter("mobile");
	    
	  DAOServices service =new DAOServiceImpl();
	  service.connectionDB();
	  service.saveRegistration(name, city, email, mobile);
	  
		  request.setAttribute("saved", "One record saved");
		  RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/saveRegistration.jsp");
		  rd.include(request, response);
	 }else {
		 RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		 
	 }
		}catch(Exception e) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	  
	
	}

}
