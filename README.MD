# Group's Definition of Done
| Title       | Description              | Evidence                                |
| -----       | -------------            | :-------------                          |
| Java Code | The code is written to implement to story | Paste a link to the Github commit(s) that added the code into the pivotal tracker story |
| Unit Testing | Each method that returns a value but doesn’t interact with the spring framework must have Junit tests written | Paste a link to the Github commit(s) that added the code for the unit tests |
| CI Passing | When the code and unit tests are written there must be a build on Travis CI that passes (the code compiles and unit tests pass) | Click on the “Build #??” for the passing build and paste the URL into a Pivotal comment |
| Manual Testing | Someone other than the develop of a user story must run the application and perform the tasks of the user story with a range of valid and invalid inputs. They must log what they did in a markdown file in Github and add any bugs they discovered into Pivotal Tracker | Paste a link to the file in Github in which the tester logged their testing in Pivotal comments. Link to the bugs added to Pivotal as comments |
| Integration Testing | Each SpringMVC controller method must automated tests that check that the method acts correctly for appropriate inputs | Paste a link to the Github commit(s) that added the code for tests |
| Integration Tests running on CI | The Integration tests pass on Travis CI | Click on the “Build #??” for the passing build and paste the URL into a Pivotal comment |
| Coding Standards Checked | Auomatic checking of coding standards is done via gradle and checkstyle. All code added for the story must adhere to the coding standards you choose | Click on the “Build #??” for the passing build and paste the URL into a Pivotal comment. This must show the style being checked |

# Group's Roles and Responsibilities

_tabulate the roles and responsibilities that each group member agrees to here. e.g._

| Role                            | Chrissie   | Nick      | Adriana  | Teddy     | Nabil    |
| ------------------------------- | :--------: | :------:  | :------: | :------:  | :------: |
| Software Developer              |            | x         | x        | x         | x        |
| Automated Test writer           |            | x         |          | x         |          |
| Manual Tester                   | x          | x         |          |           | x        |
| Build Engineer                  |            |           | x        |           |          |
| Coding standards engineer/fixer |            |           |          |           | x        |
| Scrum Master                    | x          |           |          |           |          |
| Product Owner                   | x          |           |          |           |          |
| Assessment Lead                 | x          |           |          |           |          |
| Technology Lead                 |            | x         |          | x         |          |
| Configuration Manager           |            |           | x        |           |          |
