package group.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity(name="userdeck")
public class UserDeck {
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int userDeckId;
	
    @ManyToOne
    @JoinColumn(name = "userid")
    private User user;
    
    @ManyToOne
    @JoinColumn(name = "id")
    private Deck id;
	
	@Column(nullable=false)
	private String image;
	
	@Column(nullable=false)
	private String deck;
	

}
