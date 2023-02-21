package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studentRegistration.model.DAOServiceImpl;
import com.studentRegistration.model.DAOServices;
@WebServlet("/UpdateJsp")
public class UpdateJsp extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateJsp() {
        super();
    }
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		
    	request.setAttribute("email", email);
    	request.setAttribute("mobile", mobile);
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/updateRecordjsp.jsp");
	   rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
	
		
		DAOServices dao=new DAOServiceImpl();
		dao.connectionDB();
		dao.updateRecord(email, mobile);
		ResultSet rs = dao.savedList();
	    request.setAttribute("result", rs);
	    RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/savedList.jsp");
	    rd.forward(request, response);
	}

}
