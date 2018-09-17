package MT.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "CHOICE")  // table name in DB
public class Choice {

	//VARIABLES
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="choicedetail_id")
	private int choicedetail_id;
	
	@Column(name="decision_id")
	private int decision_id;
	
	@Column(name="choicedetail_a")
	private String choicedetail_a;
	
	@Column(name="choicedetail_b")
	private String choicedetail_b;
	
	@Column(name="selection")
	private String selection;

	//DEFAULT CONSTRUCTORS
	public Choice() {
	}
	
	//TOSTRING
	@Override
	public String toString() {
		return "Choice [choicedetail_id=" + choicedetail_id + ", decision_id=" + decision_id + ", choicedetail_a="
				+ choicedetail_a + ", choicedetail_b=" + choicedetail_b + ", selection=" + selection + "]";
	}

	//GETTERS AND SETTERS
	public int getChoicedetail_id() {
		return choicedetail_id;
	}

	public void setChoicedetail_id(int choicedetail_id) {
		this.choicedetail_id = choicedetail_id;
	}

	public int getDecision_id() {
		return decision_id;
	}

	public void setDecision_id(int decision_id) {
		this.decision_id = decision_id;
	}

	public String getChoicedetail_a() {
		return choicedetail_a;
	}

	public void setChoicedetail_a(String choicedetail_a) {
		this.choicedetail_a = choicedetail_a;
	}

	public String getChoicedetail_b() {
		return choicedetail_b;
	}

	public void setChoicedetail_b(String choicedetail_b) {
		this.choicedetail_b = choicedetail_b;
	}

	public String getSelection() {
		return selection;
	}

	public void setSelection(String selection) {
		this.selection = selection;
	}
}
