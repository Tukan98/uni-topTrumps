package group.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * An organizer contains and manages a list of Todos.
 *
 */
@Entity(name="cards")
public class Cards {
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int id;
	
	@ManyToOne(optional=false,cascade=CascadeType.PERSIST)
    @JoinColumn
	private Deck deckid;
	
	@Column(nullable=false)
	private String image;
	
	@Column(nullable=false)
	private int at1;
	
	@Column(nullable=false)
	private int at2;
	
	@Column(nullable=false)
	private int at3;
	
	@Column(nullable=false)
	private int at4;
	
	@Column(nullable=false)
	private int at5;
	
	@Column(nullable=false)
	private int at6;
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAt1() {
		return at1;
	}

	public void setAt1(int at) {
		this.at1 = at;
	}
	public int getAt2() {
		return at1;
	}

	public void setAt2(int at) {
		this.at1 = at;
	}
	public int getAt3() {
		return at1;
	}

	public void setAt3(int at) {
		this.at1 = at;
	}
	
	
	
	
	public int getAt4() {
		return at1;
	}

	public void setAt4(int at) {
		this.at1 = at;
	}
	public int getAt5() {
		return at1;
	}

	public void setAt5(int at) {
		this.at1 = at;
	}
	public int getAt6() {
		return at1;
	}

	public void setAt6(int at) {
		this.at1 = at;
	}
	
	
	


	
}