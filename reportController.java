package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import databaseOp.DatabaseOperations;
import model.*;

/**
 * Servlet implementation class reportController
 */
@WebServlet("/reportController")
public class reportController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String INSERT_OR_EDIT = "/viewReport.jsp";
	private  DatabaseOperations dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reportController() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("Running ReportController");
		dao = new DatabaseOperations();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Running do get from Reportcontroller");
		// TODO Auto-generated method stub
		RequestDispatcher view = request.getRequestDispatcher(INSERT_OR_EDIT);
		view.forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Running do post from Reportcontroller");
		String projectname=(String) request.getAttribute("projectname");
		System.out.println(projectname);
		
		String fname=(String) request.getAttribute("fname");
		System.out.println(fname);
		
		
		RequestDispatcher view1 = request.getRequestDispatcher(INSERT_OR_EDIT);
		view1.forward(request, response);
		
	}

}
