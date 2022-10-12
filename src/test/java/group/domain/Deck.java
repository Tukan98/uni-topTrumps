package group.domain;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


@Entity(name="deck")
public class Deck {
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int id;
	
	@Column(nullable=false)
	private String name;
	
    @OneToMany(mappedBy = "deck", cascade = CascadeType.ALL)
    private Set<Cards> card;
    
    @OneToMany(mappedBy = "deck")
    private Set<UserDeck> decks = new HashSet<>();
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setOwner(String id) {
		this.name = id;
	}


	
}