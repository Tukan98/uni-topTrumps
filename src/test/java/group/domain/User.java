package group.domain;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import springData.domain.Organizer;
import springData.domain.Role;
import springData.domain.Todo;

/**
 * An organizer contains and manages a list of Todos.
 *
 */

@Entity(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	int userid;

	@Column(unique = true, nullable = false)
	String login;

	@Column(unique = true, nullable = false)
	String password;

	@ManyToOne(fetch = FetchType.EAGER)
	private Role role;
	
    @OneToMany(mappedBy = "users")
    private Set<UserDeck> UserDeck = new HashSet<>();

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}



	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public int getId() {
		return userid;
	}

	public void setId(int id) {
		this.userid = userid;
	}

}