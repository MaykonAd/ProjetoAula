package unama.br.Controlador;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import unama.br.DAO.AlunoDAO;
import unama.br.Modelo.Aluno;

/**
 * Servlet implementation class ControladorAluno
 */
@WebServlet("/ControladorAluno")
public class ControladorAluno extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name="jdbc/aluno")
	private DataSource dataSource;
	private AlunoDAO alunodao;
	

	
	public void init(ServletConfig config) throws ServletException {
		alunodao = new AlunoDAO(dataSource);
		
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		if(acao != null) {
			cadastrarAluno(request, response);
		}else {
			consultarAluno(request, response);
		}	
		
		
	}
	
	private void cadastrarAluno(HttpServletRequest request, HttpServletResponse response) {
		String primeiroNome = request.getParameter("primeiroNome");
		String ultimoNome = request.getParameter("ultimoNome");
		String email = request.getParameter("email");
		Aluno aluno = new Aluno (primeiroNome, ultimoNome, email);
		alunodao.cadastrarAluno(aluno);
		
	}
	
	private void consultarAluno(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<Aluno> alunos = alunodao.consultaAlunos();
		request.setAttribute("LISTA-ALUNOS", alunos);
		request.getRequestDispatcher("/ListaAlunosVisao.jsp").forward(request, response);
		
	}

}
