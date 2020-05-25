package co.edureka.quiz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.edureka.quiz.NewQuestion;
import co.edureka.quiz.QuestionSubmitter;

/**
 * Servlet implementation class SubmitQuestionController
 */
@WebServlet("/SubmitQuestionController")
public class SubmitQuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubmitQuestionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String subject = request.getParameter("Subject");
		String question = request.getParameter("Question");
		
		String option1 = request.getParameter("Option-1");
		String option2 = request.getParameter("Option-2");
		String option3 = request.getParameter("Option-3");
		String option4 = request.getParameter("Option-4");
		
		String correct = request.getParameter("Correct");
		
		NewQuestion newQuestion = new NewQuestion();
		
		newQuestion.setQuizquestion(question);
		newQuestion.setOption1(option1);
		newQuestion.setOption2(option2);
		newQuestion.setOption3(option3);
		newQuestion.setOption4(option4);
		newQuestion.setCorrect(correct);
		
		QuestionSubmitter questionSubmitter = new QuestionSubmitter();
		questionSubmitter.ModifyXMLFile(newQuestion, subject);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		request.getRequestDispatcher("/WEB-INF/jsps/submitQuestion.jsp").forward(request,response);
	}
	

}
