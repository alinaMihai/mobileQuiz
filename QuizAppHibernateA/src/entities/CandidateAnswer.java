/**
 * 
 */
package entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author user
 * 
 */
@XmlRootElement
@Entity
@Table(name = "candidate_answers")
public class CandidateAnswer extends EntityClass{

	@Id
	@GeneratedValue
	private int id;
	
	@ManyToOne
	protected Test test;
	
	@ManyToOne
	protected Question question;
	
	@ManyToOne
	protected Answer answer;

	public CandidateAnswer() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Test getTest() {
		return test;
	}

	public void setTest(Test test) {
		this.test = test;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public Answer getAnswer() {
		return answer;
	}

	public void setAnswer(Answer answer) {
		this.answer = answer;
	}

	
}
