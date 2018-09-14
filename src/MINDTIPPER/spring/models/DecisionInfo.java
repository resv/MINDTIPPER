package MINDTIPPER.spring.models;

public class DecisionInfo {
	
	//VARIABLES
	private int user_id;
	private int decision_id;
	private String date_created;
	private String winner;
	private int win_percent;
	private String complete;
	private String privacy;
	private int star;
	
	private String decision_title;
	private String choicetitle_a;
	private String choicetitle_b;
	
	private String username;
	private int lvl;
	
	//DEFAULT CONSTRUCTOR
	public DecisionInfo() {
	}
	
	
	//CONSTRUCTOR FOR USER DECISION HISTORY
	public DecisionInfo(int star, String decision_title, String choicetitle_a, String choicetitle_b,
			String date_created, int win_percent, String winner, String complete, String privacy) {
		super();
		this.star = star;
		this.decision_title = decision_title;
		this.choicetitle_a = choicetitle_a;
		this.choicetitle_b = choicetitle_b;
		this.date_created = date_created;
		this.win_percent = win_percent;
		this.winner = winner;
		this.complete = complete;
		this.privacy = privacy;
	}

	//CONSTRUCTOR FOR COMMUNITY DECISION HISTORY
	public DecisionInfo(int star, String decision_title, String choicetitle_a, String choicetitle_b, 
						String date_created, int win_percent, String winner, String username, int lvl) {
		super();
		this.star = star;
		this.decision_title = decision_title;
		this.choicetitle_a = choicetitle_a;
		this.choicetitle_b = choicetitle_b;
		this.date_created = date_created;
		this.win_percent = win_percent;
		this.winner = winner;
		this.username = username;
		this.lvl = lvl;
	}


	//CONSTRUCTOR WITH FIELDS
	public DecisionInfo(int user_id, int decision_id, String date_created, String winner, int win_percent,
			String complete, String privacy, int star) {
		super();
		this.user_id = user_id;
		this.decision_id = decision_id;
		this.date_created = date_created;
		this.winner = winner;
		this.win_percent = win_percent;
		this.complete = complete;
		this.privacy = privacy;
		this.star = star;
	}
	
	//GETTERS AND SETTERS
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getDecision_id() {
		return decision_id;
	}
	public void setDecision_id(int decision_id) {
		this.decision_id = decision_id;
	}
	public String getDate_created() {
		return date_created;
	}
	public void setDate_created(String date_created) {
		this.date_created = date_created;
	}
	public String getWinner() {
		return winner;
	}
	public void setWinner(String winner) {
		this.winner = winner;
	}
	public int getWin_percent() {
		return win_percent;
	}
	public void setWin_percent(int win_percent) {
		this.win_percent = win_percent;
	}
	public String getComplete() {
		return complete;
	}
	public void setComplete(String complete) {
		this.complete = complete;
	}
	public String getPrivacy() {
		return privacy;
	}
	public void setPrivacy(String privacy) {
		this.privacy = privacy;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getLvl() {
		return lvl;
	}
	public void setLvl(int lvl) {
		this.lvl = lvl;
	}
}