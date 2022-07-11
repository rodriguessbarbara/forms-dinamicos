package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastroColaborador
 */
public class CadastroColaborador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroColaborador() {
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
		String nome = request.getParameter("nome");
		String cargo = request.getParameter("cargo");
		String email = request.getParameter("email");
		String observacao = request.getParameter("observacao");
		String ativo = request.getParameter("ativo");

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("Registro incluído com sucesso<h3> " + "codigo: " + codigo + "</br>" + "nome: " + nome + "</br>" +
		"cargo: " + cargo + "</br>" + "email: " + email + "</br>" + "observação: " + observacao + "</br>" + "ativo: " + ativo +" </h3>");
		out.close();
	}
}
