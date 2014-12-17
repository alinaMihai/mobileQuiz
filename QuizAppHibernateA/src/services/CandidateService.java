package services;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import utility.SessionFactoryUtil;
import entities.Candidate;
import entities.Quiz;
import entities.Test;

public class CandidateService {

	public static Candidate getCandidate(String username, String password) {
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		Candidate candidate = null;
		try {

			String hashPassword = generateHashPassword(password);
			String hql = "From Candidate C Where C.username=:username AND C.password=:password";

			Query query = session.createQuery(hql);
			query.setParameter("username", username);
			query.setParameter("password", hashPassword);
			List<Candidate> result = query.list();
			transaction.commit();
				candidate = (Candidate) result.get(0);
		} catch (Exception e) {
			candidate=null;
			//e.printStackTrace();
			Logger.getLogger(CandidateService.class).debug(e.getMessage());
		} finally {
			SessionFactoryUtil.closeSession(session);
		}
		return candidate;
	}

	public static List<Quiz> getCandidateQuizes(int candidateId) {

		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		List<Quiz> quizzes = null;
		try {
			String hql = "Select q From Test t Inner Join t.quiz q Inner Join t.candidate c Where c.id=:candidateId and t.startTime is null";
			// String
			// sql="Select q.* From quizes q Join tests t on q.id=t.quiz_id Where t.candidate_id=:candidateId and t.start_time is null";
			Query query = session.createQuery(hql);
			/*
			 * query.addEntity(Quiz.class); query.addEntity(Test.class);
			 */
			query.setParameter("candidateId", candidateId);
			transaction.commit();
			quizzes = query.list();

		} catch (Exception e) {
			/*e.printStackTrace();
			transaction.rollback();*/
			Logger.getLogger(CandidateService.class).debug(e.getMessage());
		} finally {
			SessionFactoryUtil.closeSession(session);
		}
		return quizzes;

	}

	public static List<Test> getCandidateTests(int candidateId) {
		List<Test> tests = null;
		Session session = SessionFactoryUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		try {
			String hql = "Select t From Test t Inner Join t.quiz q Inner Join t.candidate c Where c.id=:candidateId and t.startTime is null";
			// String
			// sql="Select q.* From quizes q Join tests t on q.id=t.quiz_id Where t.candidate_id=:candidateId and t.start_time is null";
			Query query = session.createQuery(hql);
			/*
			 * query.addEntity(Quiz.class); query.addEntity(Test.class);
			 */
			query.setParameter("candidateId", candidateId);
			transaction.commit();
			tests = query.list();

		} catch (Exception e) {
			/*e.printStackTrace();
			transaction.rollback();*/
			Logger.getLogger(CandidateService.class).debug(e.getMessage());
		} finally {
			SessionFactoryUtil.closeSession(session);
		}

		return tests;
	}



	public static String generateHashPassword(String passwordToHash) {

		String generatedPassword = null;

		try {

			// Create MessageDigest instance for MD5
			MessageDigest md = MessageDigest.getInstance("MD5");

			// Add password bytes to digest
			md.update(passwordToHash.getBytes());

			// Get the hash's bytes
			byte[] bytes = md.digest();

			// This bytes[] has bytes in decimal format;
			// Convert it to hexadecimal format
			StringBuilder sb = new StringBuilder();

			for (int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16)
						.substring(1));
			}

			// Get complete hashed password in hex format
			generatedPassword = sb.toString();

		} catch (NoSuchAlgorithmException e) {

		/*	e.printStackTrace();*/
			Logger.getLogger(CandidateService.class).debug(e.getMessage());

		}
		return generatedPassword;
	}

}
