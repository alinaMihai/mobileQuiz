/**
 * 
 */
package entities;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;



/**
 * @author user
 *
 */
@XmlRootElement
@Entity
@Table(name="answers")
public class Answer extends EntityClass{

	@Id
	@GeneratedValue
	private int id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	protected Question question;
	
	@Lob
	protected String text;
	protected boolean correct;

	public Answer(){
		
	}
	public Answer(int id, String text, boolean correct) {
		this.id=id;
		
		this.text = text;
		this.correct = correct;
	}
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@XmlTransient
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}

	/**
	 * @param text
	 *            the text to set
	 * @throws WordContainsException 
	 */
	public void setText(String text) {
		
		this.text = text;
		
	}

	/**
	 * @return the correct
	 */
	public boolean isCorrect() {
		return correct;
	}

	/**
	 * @param correct
	 *            the correct to set
	 */
	public void setCorrect(boolean correct) {
		this.correct = correct;
	}
	@Override
	public String toString() {
		return "Answer [id=" + id + ", question=" + question + ", text=" + text
				+ ", correct=" + correct + "]";
	}


	

}
