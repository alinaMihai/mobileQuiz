/**
 * 
 */
package entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * @author user
 * 
 */
@XmlRootElement
@Entity
@Table(name = "questions")
public class Question extends EntityClass {

	@Id
	@GeneratedValue
	private int id;

	@ManyToOne(fetch=FetchType.LAZY)
	protected Quiz quiz;
	protected String title;

	@Lob
	protected String text;

	protected boolean ordered;

	@OneToMany(mappedBy = "question", fetch = FetchType.EAGER)
	protected List<Answer> answers;

	@OneToMany(mappedBy = "question")
	protected List<CandidateAnswer> candidateAnswers;

	public Question() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@XmlTransient
	public List<CandidateAnswer> getCandidateAnswers() {
		return candidateAnswers;
	}

	public void setCandidateAnswers(List<CandidateAnswer> candidateAnswers) {
		this.candidateAnswers = candidateAnswers;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title
	 *            the title to set
	 */
	public void setTitle(String title) {

		this.title = title;
	}

	/**
	 * @return the text
	 * @throws WordContainsException
	 */
	public String getText() {

		return text;
	}

	/**
	 * @param text
	 *            the text to set
	 */
	public void setText(String text) {

		this.text = text;
	}

	/**
	 * @return the ordered
	 */
	public boolean getOrdered() {
		return ordered;
	}

	/**
	 * @param ordered
	 *            the ordered to set
	 */
	public void setOrdered(boolean ordered) {
		this.ordered = ordered;
	}

	/**
	 * @return the answers
	 */

	public List<Answer> getAnswers() {
		return answers;
	}

	/**
	 * @param answers
	 *            the answers to set
	 */
	public void setAnswers(List<Answer> answers) {
		this.answers = answers;
	}

	@XmlTransient
	public Quiz getQuiz() {
		return quiz;
	}

	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Question [ title=" + title + ", text=" + text + ", ordered="
				+ ordered + ", answers=" + answers + ", candidateAnswers="
				+ candidateAnswers + "]";
	}

	/*
	 * @Override public int compareTo(Question o) { return
	 * this.getId()-o.getId(); }
	 */

}
