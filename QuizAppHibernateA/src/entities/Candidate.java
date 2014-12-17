/**
 * 
 */
package entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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
@Table(name="candidates")
public class Candidate extends EntityClass{

	@Id
	@GeneratedValue
	private int id;


	protected String name;
	protected String username;
	protected String password;
	protected int role;
	
	@OneToMany(mappedBy="candidate" , fetch=FetchType.LAZY)
	protected List<Test> tests;

	public Candidate(){
		
	}
	
	public Candidate(int id, String name, String username, String password,
			int role) {
		this.id=id;
		this.name = name;
		this.username = username;
		this.password = password;
		this.role = role;
		this.tests = new ArrayList<Test>();
	}

	public void addTest(Test t) {
		this.tests.add(t);
	}

	public void removeTest(Test t) {
		this.tests.remove(t);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 * @throws WordContainsException 
	 */
	public void setName(String name){
	
		this.name = name;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username
	 *            the username to set
	 * @throws WordContainsException 
	 */
	public void setUsername(String username)  {
		
		this.username = username;
	}

	/**
	 * @return the password
	 */

	/**
	 * @return the tests
	 */
	@XmlTransient
	public List<Test> getTests() {
		return tests;
	}

	/**
	 * @return the password
	 */

	/**
	 * @param tests
	 *            the tests to set
	 */
	public void setTests(List<Test> tests) {
		this.tests = tests;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            the password to set
	 * @throws WordContainsException 
	 */
	public void setPassword(String password) {
		
		this.password = password;
	}

	/**
	 * @return the role
	 */
	public int getRole() {
		return role;
	}

	/**
	 * @param role
	 *            the role to set
	 */
	public void setRole(int role) {
		this.role = role;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Candidate [name=" + name + ", username=" + username
				+ ", password=" + password + ", tests=" + tests + "]";
	}

}
