package ICANTPICK.Models;

public class Title {

	//VARIABLES
	private int title_id;
	private int decision_id;
	private String decision_title;
	private String choicetitle_a;
	private String choicetitle_b;
	
	
	//DEFAULT CONSTRUCTOR
	public Title() {
		
	}
	
	//CONSTRUCTORS WITH FIELDS
	public Title(int title_id, int decision_id, String decision_title, String choicetitle_a, String choicetitle_b) {
		super();
		this.title_id = title_id;
		this.decision_id = decision_id;
		this.decision_title = decision_title;
		this.choicetitle_a = choicetitle_a;
		this.choicetitle_b = choicetitle_b;
	}
	
	//GETTERS AND SETTERS
	public int getTitle_id() {
		return title_id;
	}
	public void setTitle_id(int title_id) {
		this.title_id = title_id;
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
	public String getChoicetitle_a() {
		return choicetitle_a;
	}
	public void setChoicetitle_a(String choicetitle_a) {
		this.choicetitle_a = choicetitle_a;
	}
	public String getChoicetitle_b() {
		return choicetitle_b;
	}
	public void setChoicetitle_b(String choicetitle_b) {
		this.choicetitle_b = choicetitle_b;
	}
}
