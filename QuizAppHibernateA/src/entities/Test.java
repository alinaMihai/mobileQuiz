/**
 * 
 */
package entities;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import utility.TimestampAdapter;

/**
 * @author user
 * 
 */
@XmlRootElement
@Entity
@Table(name = "tests")
public class Test extends EntityClass{

	@Id
	@GeneratedValue
	private int id;

	@ManyToOne(fetch=FetchType.LAZY)
	protected Candidate candidate;

	@ManyToOne
	protected Quiz quiz;
	
	@Column(name = "start_time")
	protected Timestamp startTime;
	
	@Column(name = "end_time")
	protected Timestamp endTime;
	
	@Column(name = "score")
	protected Integer score;
	
	@Transient
	private String quizName;

	@OneToMany(mappedBy = "test", fetch=FetchType.LAZY)
	protected List<CandidateAnswer> candidateAnswers;

	public Test() {

	}

	/*
	 * public void addCandidateAnswer(CandidateAnswer ca) {
	 * this.candidateAnswers.add(ca); }
	 * 
	 * public void removeCandidateAnswer(CandidateAnswer ca) {
	 * this.candidateAnswers.remove(ca); }
	 */

	public int getId() {
		return id;
	}
@XmlTransient
	public Candidate getCandidate() {
		return candidate;
	}

	public void setCandidate(Candidate candidate) {
		this.candidate = candidate;
	}

	public Quiz getQuiz() {
		return quiz;
	}

	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}

	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the startTime
	 */
	@XmlJavaTypeAdapter( TimestampAdapter.class)
	public Timestamp getStartTime() {
		return startTime;
	}

	/**
	 * @param startTime
	 *            the startTime to set
	 */
	public void setStartTime(Timestamp startTime) {
		this.startTime = startTime;
	}

	/**
	 * @return the endTime
	 */
	@XmlJavaTypeAdapter( TimestampAdapter.class)
	public Timestamp getEndTime() {
		return endTime;
	}

	/**
	 * @param endTime
	 *            the endTime to set
	 */
	public void setEndTime(Timestamp endTime) {
		this.endTime = endTime;
	}

	/**
	 * @return the score
	 */
	public Integer getScore() {
		return score;
	}

	/**
	 * @param score
	 *            the score to set
	 */
	public void setScore(Integer score) {
		this.score = score;
	}

	/**
	 * @return the candidateAnswers
	 */
	@XmlTransient
	public List<CandidateAnswer> getCandidateAnswers() {
		return candidateAnswers;
	}

	/**
	 * @param candidateAnswers
	 *            the candidateAnswers to set
	 */
	public void setCandidateAnswers(List<CandidateAnswer> candidateAnswers) {
		this.candidateAnswers = candidateAnswers;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */

	public void setQuizName(String quizName) {
		this.quizName = quizName;
	}

	public String getQuizName() {
		return quizName;
	}

	@Override
	public String toString() {
		return "Test [ startTime=" + startTime + ", endTime=" + endTime
				+ ", score=" + score + ", candidate_answers="
				+ candidateAnswers + "]";
	}

}
