package MT.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "DECISIONINFO") // table name in DB
public class DecisionInfo {

	//VARIABLES
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="decision_id")
	private int decision_id;
	
	@Column(name="user_id")
	private int user_id;
	
	@Column(name="date_created")
	private String date_created;
	
	@Column(name="winner")
	private String winner;
	
	@Column(name="win_percent")
	private int win_percent;
	
	@Column(name="complete")
	private String complete;
	
	@Column(name="privacy")
	private String privacy;
	
	@Column(name="star")
	private int star;
	
	
	
	

	
	//DEFAULT CONSTRUCTOR
	public DecisionInfo() {
		super();
	}
	
	//TOSTRING
	@Override
	public String toString() {
		return "DecisionInfo [decision_id=" + decision_id + ", user_id=" + user_id + ", date_created=" + date_created
				+ ", winner=" + winner + ", win_percent=" + win_percent + ", complete=" + complete + ", privacy="
				+ privacy + ", star=" + star + "]";
	}
	
	//GETTERS AND SETTERS
	public int getDecision_id() {
		return decision_id;
	}
	public void setDecision_id(int decision_id) {
		this.decision_id = decision_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
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
}
