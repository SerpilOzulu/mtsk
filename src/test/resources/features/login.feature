
Feature:MeetSky App Login Feature
  User Story :  As a user, I should be able to login.
   @positive
Scenario Outline:User can login with valid credentialsGiven user is on login page
    Given user is on login page
  When User enters username "<valid_username>"
  And User enters password "<valid_password>"
  And User clicks login button
  Then user should see homepage

  Examples:valid credentials
    | valid_username | valid_password |
    | Employee11     | Employee123    |
    | Employee21     | Employee123    |
    | Employee31     | Employee123    |
    | Employee41     | Employee123    |
    | Employee51     | Employee123    |
    | Employee61     | Employee123    |
    | Employee71     | Employee123    |
    | Employee81     | Employee123    |
    | Employee91     | Employee123    |
    | Employee101    | Employee123    |
    | Employee111    | Employee123    |
    | Employee121    | Employee123    |
    | Employee131    | Employee123    |


  @negative1
  Scenario Outline:User cannot login with invalid username
    Given user is on login page
    When User enters invalid username "<invalid_username>"
    And User enters valid password "<valid_password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice message as "Wrong username or password."
    Examples: invalid username
      | invalid_username     | valid_password |
      | E                    | Employee123    |
      | Employee21123456     | Employee123    |
      | Employee31flgmb48854 | Employee123    |
      | Employe              | Employee123    |
      | Employ  ee5          | Employee123    |
      | Employee61           | Employee123    |
      | Employeee71           |Employee123    |
      | ployee81             | Employee123    |
      | 1                    | Employee123    |
      | ,                    | Employee123    |
      | Employee111          | Employee123    |
      | .1                   | Employee123    |
      | 22                   | Employee123    |



  @negative2
  Scenario Outline:User cannot login with invalid password
    Given user is on login page
    When User enters valid username "<valid_username>"
    And User enters invalid password "<invalid_password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice message  as "Wrong username or password."
    Examples: invalid password
      | valid_username | invalid_password |
      | Employee11     | Employee1234     |
      | Employee21     | Employee12       |
      | Employee31     | Employee1        |
      | Employee41     | Employee         |
      | Employee51     | E                |
      | Employee61     | Empl             |
      | Employee71     | E                |
      | Employee81     | Employee123      |
      | Employee91     | Employee123      |
      | Employee101    | oyee123          |
      | Employee111    | ee123            |
      | Employee121    | ?                |
      | Employee131    | Empl..123        |

@negative3
  Scenario Outline: User cannot login with invalid username and password
    Given user is on login page
    When User enters invalid username "<invalid_username>"
    And User enters invalid password "<invalid_password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice message  as "Wrong username or password."
    Examples: invalid credentials
      | invalid_username      | invalid_password |
      | Employ                | Employee1234     |
      | E                     | Employee12       |
      | Emplo/1               | Employee1        |
      | Employee41            | Employee         |
      | Employee51            | E                |
      | Employee61            | Empl             |
      | Employee71            | E!!              |
      | Emp                   |oyee123           |
      | Empl???????????oyee91 | Empee123         |
      | Employee101           | oyee123          |
      | Employe.fkge111       | ee123            |
      | Employfortğtğee121    | ?                |
      | Emefnfmmployee131     | Empl..123        |

@negative4
  Scenario Outline: User cannot login with empty username and password
    Given user is on login page
    When User enters empty username "<empty_username>"
    And User enters valid and invalid password "<password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see  notice2 message as "Please fill out this field"
    Examples: invalid credentials
      | empty_username | password    |
      |                | Employee123 |
      |                | empl        |


   @negative5
  Scenario: User cannot login with credentials  which has more than 15 characters
    Given user is on login page
    When User enters a username "LongUsername" that is more than fifteen characters
      |eMPLOYEEeMPLOYEE31 |
    And User enters  a password "LongPassword"
      |Employee123Employee123 |
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice3 message  as "please enter a password or username that is more than fifteen characters"

@negative6
  Scenario:User cannot login with credentials  which has less than two characters
    Given user is on login page
    When User enters a username "ShortUsername" that is less than two characters
      | e |
      | 1 |
      | * |
      | = |
    And User enters  a password "ShortPassword" that is less than two characters
      | E |
      | ! |
      | e |
      | @ |
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice4 message as "please enter a password or username that is less than two characters"



   @negative7
  Scenario:User cannot login with  username and empty password
    Given user is on login page
    When User enters valid and invalid username "username"
    |Employee31|
    |ploy      |
    And User enters empty password "empty password"
    ||
    |   |
    And User clicks login button
    Then user should not see homepage and should be still on login page
    Then user should see notice5 message as "Please fill out this field"

 @negative8
  Scenario:User can see the password in a form of dots by default
    Given user is on login page
    When User enters  valid and invalid password "password"
      | Employee123 |
      | emp         |
      | ployee      |
      | 12345       |
    Then user should see the password in a form of dots by default


  @MTSK-349 @negative9
  Scenario:User can see the password explicitly if needed
    Given user is on login page
    When User enters valid and invalid password "password"
      | Employee123 |
      | 12345       |
      | *           |
      | \?          |
      | ...         |
      | ABCD        |
    And user clicks eye sign on the password box
    Then user should see the password as written


  Scenario:User should see the "Forgot password?" link on the login page and can see the
  "Reset Password" button on the next page after clicking on forget password link
    Given user is on login page
    When user should see forgot password? link on the login page
    And User clicks on  forgot password? link
    Then user should see  Reset Password button on the next page


  Scenario:User should see valid placeholders on Username and Password fields
    Given user is on login page
    Then user should see valid placeholder in username box "username or email"
    Then user should see valid placeholder in password box as "Password"



