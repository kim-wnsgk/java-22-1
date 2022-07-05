package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.AddFoodAction;
import action.DeleteFoodAction;
import action.EditFoodAction;
import action.FindFoodAction;
import action.ListViewFoodAction;

/**
 * Servlet implementation class cont
 */
@WebServlet(urlPatterns = "/cont")
public class cont extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cont() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		Action action = null;
		if (command.equals("/ListViewFoodAction.do")) { // list view
			action = new ListViewFoodAction(); // return personList w/ mode
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("lab5.jsp");
			rd.forward(request, response);
		} else if (command.equals("/AddFoodAction.do")) { // add
			action = new AddFoodAction(); // add person BMI
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewFoodAction.do");
			rd.forward(request, response);	
		} else if (command.equals("/EditViewFoodAction.do")) { // edit view
			action = new FindFoodAction(); // return person BMI
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("editForm.jsp?mode=edit");
			rd.forward(request, response);
		} else if (command.equals("/EditFoodAction.do")) { // edit
			action = new EditFoodAction(); // edit person BMI
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewFoodAction.do?mode=edit");
			rd.forward(request, response);	
		} else if (command.equals("/DeleteFoodAction.do")) { // delete
			action = new DeleteFoodAction(); // delete person BMI
			action.execute(request, response);
			RequestDispatcher rd = request.getRequestDispatcher("/ListViewFoodAction.do?mode=delete");
			rd.forward(request, response);	
		} 
	}

}
