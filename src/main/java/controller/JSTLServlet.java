package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Student;

/**
 * Servlet implementation class JSTLServlet
 */
public class JSTLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JSTLServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		List<Student> empList = new ArrayList<Student>();
		Student emp1 = new Student();

		emp1.setName("Shreevatsa MS");
		emp1.setAddress("Sagar");
		Student emp2 = new Student();

		emp2.setName("Vignesh Sharma");
		emp2.setAddress("Bangalore");
		empList.add(emp1);
		empList.add(emp2);
		request.setAttribute("empList", empList);

		request.setAttribute("htmlTagData", "<br/> creates a new line.");
		request.setAttribute("url", "https://github.com/dushyntSharma");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/jstl.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
