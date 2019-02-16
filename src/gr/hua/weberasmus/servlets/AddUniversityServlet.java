package gr.hua.weberasmus.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gr.hua.weberasmus.WebErasmusGeneric;

/**
 * Servlet implementation class AddUniversity
 */
@WebServlet("/AddUniversityServlet")
public class AddUniversityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUniversityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String location = request.getParameter("location");
		int numOfAcceptants = Integer.parseInt(request.getParameter("num_acceptants"));
		String params = "name=" + name + "&location=" + location + "&num_acceptants=" + numOfAcceptants;
		String url = WebErasmusGeneric.URL + WebErasmusGeneric.UNIVERSITIES_API + "/adduniversity";
		WebErasmusGeneric weg = new WebErasmusGeneric();
		try {
			weg.sendPost(url, params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("successfulchanges.jsp");
	}

}
