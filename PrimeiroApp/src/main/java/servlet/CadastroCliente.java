package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastroCliente
 */
public class CadastroCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroCliente() {
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
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String endereco = request.getParameter("endereco");
		String bairro = request.getParameter("bairro");
		String cidade = request.getParameter("cidade");
		String CEP = request.getParameter("CEP");
		String CPF = request.getParameter("CPF");
		String ativo = request.getParameter("ativo");

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("Registro incluído com sucesso<h3> " + "codigo: " + codigo + "</br>" + "nome: " + nome + "</br>" +
				"email: " + email + "</br>" + "telefone: " + telefone + "</br>" + "endereço " + endereco + "</br>" +
				"bairro: " + bairro + "</br>" + "cidade: " + cidade + "</br>" + "CEP: " + CEP + "</br>" + "CPF: " + CPF + "</br>" +
				"ativo: " + ativo +" </h3>");
		out.close();
	}

}
