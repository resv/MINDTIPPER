package ICANTPICK.Models;

public class Choice {

	//VARIABLES
	private int choice_detail_id;
	private int decision_id;
	private String decision_title;
	private String choicedetail_a;
	private String choicedetail_b;
	private String selection;
	
	//DEFAULT CONSTRUCTOR
	public Choice() {
		
	}
	
	//CONTRUCTOR FOR GET CHOICEDETAILS
	public Choice(String choicedetail_a, String choicedetail_b, int choice_detail_id, String selection) {
		super();
		this.choicedetail_a = choicedetail_a;
		this.choicedetail_b = choicedetail_b;
		this.choice_detail_id = choice_detail_id;
		this.selection = selection;
	}
	
	//CONSTRUCTOR WITH FIELDS
	public Choice(int choice_detail_id, int decision_id, String decision_title, String choicedetail_a,
			String choicedetail_b, String selection) {
		super();
		this.choice_detail_id = choice_detail_id;
		this.decision_id = decision_id;
		this.decision_title = decision_title;
		this.choicedetail_a = choicedetail_a;
		this.choicedetail_b = choicedetail_b;
		this.selection = selection;
	}
	
	//SETTERS AND GETTERS
	public int getChoice_detail_id() {
		return choice_detail_id;
	}
	public void setChoice_detail_id(int choice_detail_id) {
		this.choice_detail_id = choice_detail_id;
	}
	public int getDecision_id() {
		return decision_id;
	}
	public void setDecision_id(int decision_id) {
		this.decision_id = decision_id;
	}
	public String getDecision_title() {
		return decision_title;
	}
	public void setDecision_title(String decision_title) {
		this.decision_title = decision_title;
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
