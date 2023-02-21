package controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studentRegistration.model.DAOServiceImpl;
import com.studentRegistration.model.DAOServices;
@WebServlet("/DeleteRecord")
public class DeleteRecord extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteRecord() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
    	String email = request.getParameter("email");
    	DAOServices dao=new DAOServiceImpl();
	     dao.connectionDB();
	     dao.deleteRecord(email);
	     ResultSet rs = dao.savedList();
	     request.setAttribute("result", rs);
	     RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/savedList.jsp");
	     rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
