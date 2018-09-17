package MT.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "USERINFO")  // table name in DB
public class UserInfo {

	//VARIABLES
		
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="user_id")
		private int user_id;
		
		@Column(name="username")
		private String username;
		
		@Column(name="email")
		private String email;
		
		@Column(name="password")
		private String password;
		
		@Column(name="lvl")
		private int lvl;

		
		public UserInfo() {
		}

		@Override
		public String toString() {
			return "UserInfo [user_id=" + user_id + ", username=" + username + ", email=" + email + ", password="
					+ password + ", lvl=" + lvl + "]";
		}

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
