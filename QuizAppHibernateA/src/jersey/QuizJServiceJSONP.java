package jersey;

import java.sql.Timestamp;
import java.util.Collection;
import java.util.Date;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.GenericEntity;

import services.CandidateService;
import services.QuizService;

import com.sun.jersey.api.json.JSONWithPadding;

import entities.Answer;
import entities.Question;
import entities.Test;

@Path("/service/quizzes")
public class QuizJServiceJSONP {

	@GET
	@Path("{id}/jsonp")
	@Produces({ "application/javascript" })
	public JSONWithPadding getUserTests(@PathParam("id") Integer candidateId,
			@QueryParam("callback") String callback) {
		Collection<Test> tests = CandidateService
				.getCandidateTests(candidateId);

		return new JSONWithPadding(new GenericEntity<Collection<Test>>(tests) {
		}, callback);

	}
	
	@GET
	@Path("/query/jsonp")
	@Produces({ "application/javascript" })
	public JSONWithPadding getQuizJSONP(@QueryParam("callback") String callback,@QueryParam("quizId") int id) {
		
		Collection<Question> questions = QuizService.getQuizQuestions(id);
		return new JSONWithPadding(new GenericEntity<Collection<Question>>(questions) {}, callback);
	}
	
	@GET
	@Path("/answers/jsonp")
	@Produces({"application/javascript"})
	public JSONWithPadding getCorrectAnswersJSONP(@QueryParam("callback")String callback,@QueryParam("quizId") int quizId) {

		Collection<Answer> answers = QuizService.getCorrectAnswers(quizId);

		return new JSONWithPadding(new GenericEntity<Collection<Answer>>(answers){},callback);

	}
	
	@GET
	@Path("/update/jsonp")
	@Produces({"application/javascript"})
	public JSONWithPadding updateTestJSONP(@QueryParam("callback") String callback, @QueryParam("testId") Integer testId) {
		Date now = new Date();
		Timestamp ts_now = new Timestamp(now.getTime());
		Integer result = QuizService.updateStartTest(testId, ts_now);
        return new JSONWithPadding((Object)(new Test()),callback);
	}
	
	@GET
	@Path("/updateEndTest/jsonp")
	@Produces({"application/javascript"})
	public JSONWithPadding updateEndTestJSONP(@QueryParam("testId") int testId,@QueryParam("score") Integer score,@QueryParam("callback") String callback) {
		Date now = new Date();
		Timestamp ts_now = new Timestamp(now.getTime());
		Integer result = QuizService.updateEndTest(testId, ts_now, score);
		return new JSONWithPadding((Object)(new Test()),callback);
	}
	
	
}
