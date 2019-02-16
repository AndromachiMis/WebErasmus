package gr.hua.weberasmus.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gr.hua.weberasmus.WebErasmusGeneric;

/**
 * Servlet implementation class UpdateUniversityServlet
 */
@WebServlet("/UpdateUniversityServlet")
public class UpdateUniversityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUniversityServlet() {
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
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String location = request.getParameter("location");
		int num_acceptants = Integer.parseInt(request.getParameter("num_acceptants"));
		
		String params = "?id=" + id + "&name=" + name + "&location=" + location + "&num_acceptants=" + num_acceptants;
		String url = WebErasmusGeneric.URL + WebErasmusGeneric.UNIVERSITIES_API + "/updateuniversity";
		WebErasmusGeneric weg = new WebErasmusGeneric();
		try {
			weg.sendPut(url + params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("successfulchanges.jsp");


	}

}
