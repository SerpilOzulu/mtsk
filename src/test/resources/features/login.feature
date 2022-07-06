@MTSK-349
Feature:MeetSky App Login Feature
  User Story :  As a user, I should be able to login.
   @login1 @positive   @MTSK-430
Scenario Outline:User can login with valid credentials
    Given user is on login page
  When User enters username "<valid_username>"
  And User enters password "<valid_password>"
  And User clicks login button
  Then user should see homepage

  Examples:valid credentials
    | valid_username | valid_password |
    | Employee21     | Employee123    |
    | Employee31     | Employee123    |
    | Employee41     | Employee123    |
    | Employee51     | Employee123    |
    | Employee61     | Employee123    |
    | Employee71     | Employee123    |
    | Employee81     | Employee123    |
    | Employee91     | Employee123    |
    | Employee111    | Employee123    |
    | Employee121    | Employee123    |
    | Employee131    | Employee123    |


 @login2  @negative  @MTSK-432
  Scenario Outline:User cannot login with invalid username
    Given user is on login page
    When User enters invalid username "<invalid_username>"
    And User enters valid password "<valid_password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice message as "Wrong username or password."
    Examples: invalid username
      | invalid_username | valid_password |
      | E                | Employee123    |
      | Employee21123456 | Employee123    |
      | ployee81         | Employee123    |
      | Employee1111     | Employee123    |
      | .1               | Employee123    |




 @login3 @negative @MTSK-433
  Scenario Outline:User cannot login with invalid password
    Given user is on login page
    When User enters valid username "<valid_username>"
    And User enters invalid password "<invalid_password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice message  as "Wrong username or password."
    Examples: invalid password
      | valid_username | invalid_password |
      | Employee31     | Employee1234     |
      | Employee21     | Employee12       |
      | Employee31     | Employee1        |
      | Employee41     | Employee         |
      | Employee51     | E                |


       @login4  @negative @MTSK-434
  Scenario Outline: User cannot login with invalid username and password
    Given user is on login page
    When User enters invalid username "<invalid_username>"
    And User enters invalid password "<invalid_password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice message  as "Wrong username or password."
    Examples: invalid credentials
      | invalid_username      | invalid_password |
      | Employ                | Emplo1234        |
      | E                     | Employee12       |
      | Emplo/1               | Employee1        |
      | Employee414           | Employee         |
      | Employee515           | E                |


@negative @login5  @MTSK-435
  Scenario Outline: User cannot login with empty username and password
    Given user is on login page
    When User enters empty username "<empty_username>"
    And User enters valid and invalid password "<password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see  notice2 message as "Please fill out this field."
    Examples: invalid credentials
      | empty_username | password    |
      |                | Employee123 |
      |                | empl        |


   @negative  @login6 @MTSK-436
  Scenario Outline: User cannot login with credentials  which has more than 15 characters
    Given user is on login page
    When User enters a username "<LongUsername>" that is more than fifteen characters
    And User enters  a password "<LongPassword>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice3 message  as "Wrong username or password."
     Examples:
       | LongUsername            | LongPassword           |
       | eMPLOYEEeMPLOYEE31      | Employee123Employee123 |
       | Employee123Employee1563 | eMPLOYEEeMPLOYEE41     |

  @negative  @login7  @MTSK-437
  Scenario Outline:User cannot login with credentials  which has less than two characters
    Given user is on login page
    When User enters a username "<ShortUsername>" that is less than two characters
    And User enters  a password "<ShortPassword>" that is less than two characters
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice4 message as "Wrong username or password."
  Examples:
    | ShortUsername | ShortPassword |
    | e             | E             |
    | 1             | 2             |
    | *             | 4             |

  @login8 @negative   @MTSK-438
  Scenario Outline:User cannot login with  username and empty password
    Given user is on login page
    When User enters valid and invalid username "<username>"
    And User enters empty password "<empty password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice5 message as "Please fill out this field."
    Examples:
      | username   | empty password |
      | Employee31 |                |
      | p          |                |


  @login9  @MTSK-439
  Scenario Outline:User can see the password in a form of dots by default
    Given user is on login page
    When User enters  valid and invalid password "<password>"
    Then user should see the password in a form of dots by default
    Examples:
      | password    |
      | Employee123 |
      | emp         |


  @login10  @MTSK-440
  Scenario Outline:User can see the password explicitly if needed
    Given user is on login page
    When User enters valid and invalid password "<password>"
    And user clicks eye sign on the password box
    Then user should see the password as written in a form of text
    Examples:
      | password    |
      | Employee123 |
      | 12345       |
      | *           |
      | ...         |
      | ABCD        |






  @login11  @MTSK-441
  Scenario:User should see the "Forgot password?" link on the login page and can see the
  "Reset Password" button on the next page after clicking on forget password link
    Given user is on login page
    When user should see forgot password? link on the login page
    And User clicks on  forgot password? link
    Then user should see  Reset Password button on the next page

@login12 @MTSK-442
  Scenario:User should see valid placeholders on Username and Password fields
    Given user is on login page
    Then user should see valid placeholder in username box "Username or email"
    Then user should see valid placeholder in password box as "Password"



