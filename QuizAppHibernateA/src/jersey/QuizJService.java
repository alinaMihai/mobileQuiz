package jersey;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import services.CandidateService;
import services.EntityService;
import services.QuizService;
import entities.Answer;
import entities.EntityClass;
import entities.Question;
import entities.Quiz;
import entities.Test;

@Path("/service/quizzes2")
public class QuizJService {

	@GET
	@Path("{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Test> getCandidateTests(@PathParam("id") String candidateId) {
		return CandidateService
				.getCandidateTests(Integer.parseInt(candidateId));

	}


	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Quiz> getQuizes() {
		EntityService entityService = new EntityService();
		List<EntityClass> allQuizzes = entityService.getEntityList("Quiz q");
		List<Quiz> quizzes = new ArrayList<Quiz>();
		Iterator<EntityClass> iter = allQuizzes.iterator();
		while (iter.hasNext()) {
			quizzes.add((Quiz) iter.next());
		}
		return quizzes;
	}

	@GET
	@Path("/query")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Question> getQuiz(@QueryParam("id") int id) {
		List<Question> questions = QuizService.getQuizQuestions(id);

		return questions;
	}


	@GET
	@Path("/answers")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Answer> getCorrectAnswers(@QueryParam("quizId") int quizId) {

		List<Answer> answers = QuizService.getCorrectAnswers(quizId);

		return answers;

	}
	
	

	@GET
	@Path("/update")
	@Produces("text/plain")
	public String updateTest(@QueryParam("testId") int testId) {
		Date now = new Date();
		Timestamp ts_now = new Timestamp(now.getTime());
		int result = QuizService.updateStartTest(testId, ts_now);
		return "rows affected " + result;
	}
	


	@GET
	@Path("/updateEndTest")
	@Produces("text/plain")
	public String updateEndTest(@QueryParam("testId") int testId,
			@QueryParam("score") Integer score) {
		Date now = new Date();
		Timestamp ts_now = new Timestamp(now.getTime());
		int result = QuizService.updateEndTest(testId, ts_now, score);
		return "rows affected " + result;
	}
	
	

}
