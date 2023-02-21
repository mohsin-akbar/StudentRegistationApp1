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
@WebServlet("/verifyLogin")
public class VerifyLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public VerifyLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
	
	DAOServices service=new DAOServiceImpl();
	service.connectionDB();
	boolean result = service.verifyCredentials(email, password);
	if(result==true) {
		HttpSession session = request.getSession(true);
		session.setAttribute("email", email);
		session.setMaxInactiveInterval(10);
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/saveRegistration.jsp");
		rd.forward(request,response);
		
	}else {
	    request.setAttribute("msg", "X Invalid Username&Password");
		
	}
	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	
	}

}
