package springData.domain;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;
import org.hamcrest.Matchers;
import org.junit.Test;

public class OrganizerTest {

	@Test
	public void OrganizerHasId() {
		Organizer organizer = new Organizer();				//Test Organizer has Id
		assertThat(organizer,Matchers.hasProperty("id"));
	}
	
	@Test
	public void OrganizerCanSetId() {
		Organizer organizer = new Organizer();				//Test it can set Id
		organizer.setId(7);
		assertThat(organizer,Matchers.hasProperty("id", is(7)));
	}
	
	@Test
	public void OrganizerCanGetId() {
		Organizer organizer = new Organizer();
		organizer.setId(1);									//Test it can get Id
		int id = organizer.getId();
		assertThat(id, Matchers.equalTo(1));
	}
	
	@Test
	public void OrganizerHasOwner() {
		Organizer organizer = new Organizer();				//Test it has an Owner
		assertThat(organizer, Matchers.hasProperty("owner"));
	}
	
	@Test
	public void OrganizerCanGetOwner() {
		
		OrganizerUser owner = new OrganizerUser();
		Organizer organizer = new Organizer();				//Test organizer can get an already set owner
		
		owner.setId(2);
		owner.setLogin("Admin");
		
		organizer.setOwner(owner);
		
		assertThat(organizer.getOwner(), Matchers.notNullValue());
		
	}
	
	//can also test a null return for set/get owner
	
	@Test
	public void OrganizerCanSetOwner() {
		
		OrganizerUser owner = new OrganizerUser();
		Organizer organizer = new Organizer();				//Test setOwner is not null
		
		owner.setId(2);
		owner.setLogin("Admin");
		organizer.setOwner(owner);
		
		assertThat(organizer.getOwner(), Matchers.notNullValue());
	}

}
