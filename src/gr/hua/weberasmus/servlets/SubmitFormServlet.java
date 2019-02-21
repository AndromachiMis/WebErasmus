package gr.hua.weberasmus.servlets;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import gr.hua.weberasmus.WebErasmusGeneric;

/**
 * Servlet implementation class SubmitFormServlet
 */
@WebServlet("/SubmitFormServlet")
public class SubmitFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SubmitFormServlet() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		boolean valid = true;
		int id = Integer.parseInt(request.getParameter("id"));
		String username = request.getParameter("username");
		String fullname = request.getParameter("fullname");
		String fathername = request.getParameter("fathername");
		String mothername = request.getParameter("mothername");
		int phone = Integer.parseInt(request.getParameter("phone"));
		int year = Integer.parseInt(request.getParameter("year"));
		int lessons = Integer.parseInt(request.getParameter("lessons"));
		String universities = Arrays.toString(request.getParameterValues("universities"));
		String cert = request.getParameter("cert");
		String params = "username=" + username + "&fullname=" + fullname + "&fathername=" + fathername + "&mothername="
				+ mothername + "&phone=" + phone + "&year=" + year + "&lessons=" + lessons + "&universities="
				+ universities + "&cert=" + cert;
		String url = WebErasmusGeneric.URL + WebErasmusGeneric.STUDENT_API + "/submitform";
		WebErasmusGeneric weg = new WebErasmusGeneric();
		try {
			weg.sendPost(url, params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (year < 3 || year > 4) {
			valid = false;
		} else if (lessons > 5) {
			valid = false;
		} /* else if (universities.length > 3) {
			valid = false;
		} */
		if (valid) {
			response.sendRedirect("success.jsp");
		} else {
			response.sendRedirect("fail.jsp");

		}

	}

}
