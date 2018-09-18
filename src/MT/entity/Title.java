package MT.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "TITLE")  // table name in DB
public class Title {

		//VARIABLES
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="title_id")
		private int title_id;
		
		@Column(name="decision_id")
		private int decision_id;
		
		@Column(name="decision_title")
		private String decision_title;
		
		@Column(name="choicetitle_a")
		private String choicetitle_a;
		
		@Column(name="choicetitle_b")
		private String choicetitle_b;

		
		
		//DEFAULT CONSTRUCTORS
		public Title() {
		}
		
		//TOSTRING
		@Override
		public String toString() {
			return "Title [title_id=" + title_id + ", decision_id=" + decision_id + ", decision_title=" + decision_title
					+ ", choicetitle_a=" + choicetitle_a + ", choicetitle_b=" + choicetitle_b + "]";
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
