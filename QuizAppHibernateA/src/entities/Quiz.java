/**
 * 
 */
package entities;

import java.sql.Timestamp;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
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
@Table(name="quizes")
public class Quiz extends EntityClass  {

	@Id
	@GeneratedValue
	private int id;
	
	protected String name;
	protected boolean ordered;
	
	@Column(name = "time_limit")
	protected int timeLimit;

	protected int type;

	protected String comments;
	
	@Column(name = "created_date")
	protected Timestamp createdDate;
	
	@Column(name = "modified_date")
	protected Timestamp modifiedDate;
	
	@OneToMany(mappedBy="quiz", fetch=FetchType.LAZY)
	protected List<Question> questions;
	
	@OneToMany(mappedBy="quiz")
	protected List<Test> tests;

	public Quiz() {
	}

	public Quiz(int id, String name, boolean ordered, int timeLimit, int type,
			String comments, Timestamp createdDate, Timestamp modifiedDate) {
		this.id=id;
		this.name = name;
		this.ordered = ordered;

		if (this.ordered) {
			this.questions = new LinkedList<Question>();
			this.tests = new LinkedList<Test>();
		}
		this.timeLimit = timeLimit;
		this.type = type;
		this.comments = comments;
		this.createdDate = createdDate;
		this.modifiedDate = modifiedDate;
	}

	
	
	/*public static Quiz findQuizById(LinkedList<Quiz> quizes, int id) {
		for (Quiz quiz : quizes) {
			if (quiz.id == id) {
				return quiz;
			}

		}
		return null;
	}*/

/*	public static Question findQuestionById(LinkedList<Quiz> quizes, int qId) {
		for (Quiz quiz : quizes) {
			for (Question question : quiz.questions) {
				if (question.id == qId) {
					return question;
				}
			}
		}
		return null;
	}*/

public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	/*	public Question findQuestionById(int id) {
		for (Question question : questions) {
			if (question.id == id) {
				return question;
			}
		}
		return null;
	}*/
/*
	public void addQuestion(Question q) {
		this.questions.add(q);
	}

	public void removeQuestion(Question q) {
		this.removeQuestion(q);
	}

	public void addTest(Test t) {
		this.tests.add(t);
	}

	public void removeTest(Test t) {
		this.tests.remove(t);
	}
*/
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		
		this.name = name;
	}

	/**
	 * @return the address
	 */
	public boolean getOrdered() {
		return this.ordered;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setOrdered(boolean ordered) {
		this.ordered = ordered;
	}

	/**
	 * @return the timeLimit
	 */
	public int getTimeLimit() {
		return timeLimit;
	}

	/**
	 * @param timeLimit
	 *            the timeLimit to set
	 */
	public void setTimeLimit(int timeLimit) {
		this.timeLimit = timeLimit;
	}

	/**
	 * @return the comments
	 */
	public String getComments() {
		return comments;
	}

	/**
	 * @param comments
	 *            the comments to set
	 */
	public void setComments(String comments) {
		this.comments = comments;
	}
	@XmlJavaTypeAdapter( TimestampAdapter.class)
	public Timestamp getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Timestamp createdDate) {
		this.createdDate = createdDate;
	}
	@XmlJavaTypeAdapter( TimestampAdapter.class)
	public Timestamp getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Timestamp modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	/**
	 * @return the questions
	 */
	
	public Collection<Question> getQuestions() {
		return questions;
	}

	/**
	 * @param questions
	 *            the questions to set
	 */
	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}

	/**
	 * @return the type
	 */
	public int getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(int type) {
		this.type = type;
	}

	/**
	 * @return the tests
	 */
	@XmlTransient
	public Collection<Test> getTests() {
		return tests;
	}

	/**
	 * @param tests
	 *            the tests to set
	 */
	public void setTests(List<Test> tests) {
		this.tests = tests;
	}

/*	@Override
	public int compareTo(Quiz o) {
		return this.getId() - o.getId();
	}

	public ArrayList<Question> sortQuestions(Collection<Question> questionList) {
		ArrayList<Question> questionsSorted = new ArrayList<Question>(questionList);
		Collections.sort(questionsSorted);
		return questionsSorted;
	}*/

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Quiz [name=" + name + ", ordered=" + ordered + ", timeLimit="
				+ timeLimit + ", type=" + type + ", comments=" + comments
				+ ", createdDate=" + createdDate + ", modifiedDate="
				+ modifiedDate + ", questions=" + questions + ", tests="
				+ tests + "]";
	}

}
