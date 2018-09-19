package ICANTPICK.Models;

public class UserInfo {

	//VARIABLES
	private int user_id;
	private String username;
	private String email;
	private String password;
	private int lvl;
	
	//DEFAULT CONSTRUCTOR
	public UserInfo() {
	}

	//CONSTRUCTOR WITH FIELDS
	public UserInfo(int user_id, String username, String email, String password, int lvl) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.lvl = lvl;
	}

	//SETTERS AND GETTERS
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getLvl() {
		return lvl;
	}
	public void setLvl(int lvl) {
		this.lvl = lvl;
	}	
}
