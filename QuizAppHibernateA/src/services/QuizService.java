package services;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import utility.SessionFactoryUtil;
import entities.Answer;
import entities.Question;

public class QuizService {

	public static List<Answer> getCorrectAnswers(int quizId) {
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();

		List<Answer> answers = new ArrayList<Answer>();
		try {
			String hql = "Select a From Answer a Inner Join a.question q Inner Join q.quiz quiz Where a.correct=true And quiz.id=:quizId ";
			Query query = session.createQuery(hql);
			query.setParameter("quizId", quizId);
			transaction.commit();
			answers = query.list();
		} catch (Exception e) {
			/*e.printStackTrace();
			transaction.rollback();*/
			Logger.getLogger(QuizService.class).debug(e.getMessage());
		} finally {
			SessionFactoryUtil.closeSession(session);
		}
		return answers;
	}

	public static List<Question> getQuizQuestions(int quizId) {
		List<Question> questions = null;
		List<Question> tempQuestions = new ArrayList<Question>();
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();

		try {

			String hql = "Select questions From Quiz q Join q.questions questions  Where q.id=:quizId";
			Query query = session.createQuery(hql);
			query.setParameter("quizId", quizId);

			
			questions = (List<Question>) query.list();
			transaction.commit();
			/*Iterator<Question> questionIter = questions.iterator();

			while (questionIter.hasNext()) {
				Question question = questionIter.next();
				List<Answer> answers = QuizService.getAnswers(question.getId());

				question.setAnswers(answers);
				tempQuestions.add(question);

			}*/

		} catch (Exception e) {
			/*e.printStackTrace();
			transaction.rollback();*/
			Logger.getLogger(QuizService.class).debug(e.getMessage());
		} finally {
			SessionFactoryUtil.closeSession(session);
		}

		return questions;
	}

/*	private static List<Answer> getAnswers(int questionId) {
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Answer> answers = null;
		try {
			String answersHql = "Select a from Answer a Join a.question q Where q.id=:id";
			Query answersQuery = session.createQuery(answersHql);
			answersQuery.setParameter("id", questionId);
			transaction.commit();
			answers = answersQuery.list();

		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		} finally {
			SessionFactoryUtil.closeSession(session);
		}

		return answers;

	}*/

	public static int updateStartTest(int testId, Timestamp startTime) {

		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
        int result=0;
		try {

			String hql = "Update Test t Set t.startTime=:startTime Where t.id=:testId";
			Query query = session.createQuery(hql);
			query.setParameter("testId", testId);
			query.setParameter("startTime", startTime);
			 result = query.executeUpdate();
			 transaction.commit();
            
		} catch (Exception e) {
//			e.printStackTrace();
			//transaction.rollback();
			Logger.getLogger(QuizService.class).debug(e.getMessage());
		} finally {
			SessionFactoryUtil.closeSession(session);
		}
		return result;
	}
	
	public static int updateEndTest(int testId, Timestamp endTime,Integer score){
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
         int result=0;
		try {

			String hql = "Update Test t Set t.endTime=:endTime, t.score=:score Where t.id=:testId";
			Query query = session.createQuery(hql);
			query.setParameter("testId", testId);
			query.setParameter("endTime", endTime);
			query.setParameter("score", score);
			result = query.executeUpdate();
			transaction.commit();
			 
		} catch (Exception e) {
//			e.printStackTrace();
			Logger.getLogger(QuizService.class).debug(e.getMessage());
		} finally {
			SessionFactoryUtil.closeSession(session);
		}
		return result;
	}

}
