package group.application;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

import spock.lang.*;
import springData.*;
import springData.controller.AdminController;
import springData.controller.OrganizerController;
import springData.controller.OrganizerUserValidator;


@ContextConfiguration
@WebMvcTest(controllers= {AdminController.class, OrganizerController.class, OrganizerUserValidator.class})
public class ApplicationTests extends Specification {

	
	
	
	
	
}



