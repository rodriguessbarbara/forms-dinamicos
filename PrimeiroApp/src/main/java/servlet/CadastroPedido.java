package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastroPedido
 */
public class CadastroPedido extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroPedido() {
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
		String codigo = request.getParameter("codigo");
		String cliente = request.getParameter("cliente");
		String vendedor = request.getParameter("vendedor");
		String produto = request.getParameter("produto");

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("Registro incluído com sucesso<h3> " + "codigo: " + codigo + "</br>" + "cliente: " + cliente + "</br>" +
		"vendedor: " + vendedor + "</br>" + "produto: " + produto +" </h3>");
		out.close();
	}

}
