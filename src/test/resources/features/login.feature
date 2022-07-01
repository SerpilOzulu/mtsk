
Feature: MeetSky App Login Feature
  User Story :  As a user, I should be able to login.
  @loginMeetsky
Scenario Outline:  User can login with valid credentials
    Given user is on login page
  When User enters username "<valid username>"
  And User enters password "<valid password>"
  And User clicks login button
  Then user should see homepage
    @loginMeetsky
  Examples: valid credentials
    | valid username | valid password |
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


  Scenario Outline: User cannot login with invalid username
    Given user is on login page
    When User enters invalid username "<invalid username>"
    And User enters valid password "<valid password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
  Then user should see "notice message" as "Wrong username or password. "
    Examples: invalid username
      | invalid username     | valid password |
      | E                    | Employee123    |
      | Employee21123456     | Employee123    |
      | Employee31flgmb48854 | Employee123    |
      | Employe              | Employee123    |
      | Employ  ee5          | Employee123    |
      | Employee61           | Employee123    |
      | Employeee71           | Employee123    |
      | ployee81             | Employee123    |
      | 1                    | Employee123    |
      | ,                    | Employee123    |
      | Employee111          | Employee123    |
      | .1                   | Employee123    |
      | 22                   | Employee123    |




  Scenario Outline: User cannot login with invalid password
    Given user is on login page
    When User enters valid username"<valid username>"
    And User enters invalid password "<invalid password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
  Then user should see "notice message" as "Wrong username or password. "
    Examples: invalid password
      | valid username | invalid password |
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


  Scenario Outline: User cannot login with invalid username and password
    Given user is on login page
    When User enters invalid username "<invalid username>"
    And User enters invalid password "<invalid password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
  Then user should see "notice message" as "Wrong username or password. "
    Examples: invalid credentials
      | invalid username      | invalid password |
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


  Scenario Outline: User cannot login with empty username and password
    Given user is on login page
    When User enters empty username "<empty username>"
    And User enters valid and invalid password "<password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
  Then user should see "notice message" as "Please fill out this field"
    Examples: invalid credentials
      | empty username | password    |
      |                | Employee123 |
      |                | empl        |



  Scenario Outline: User cannot login with  username and empty password
    Given user is on login page
    When User enters valid and invalid username "<username>"
    And User enters empty password "<empty password>"
    And User clicks login button
    Then user should not see homepage and should be still on login page
  Then user should see "notice message" as "Please fill out this field"
    Examples: invalid credentials
      | username   | empty password |
      | Employee31 |                |
      | ploy       |                |


  Scenario: User can see the password in a form of dots by default
    Given user is on login page
    When User enters password "password"
      | Employee123 |
      | emp         |
      | ployee      |
      | 12345       |
    Then user should see the password in a form of dots by default

Scenario: User can see the password explicitly if needed
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


  Scenario: User should see the "Forgot password?" link on the login page and can see the
 "Reset Password" button on the next page after clicking on forget password link
    Given user is on login page
  When user should see forgot password? link on the login page
   And User clicks on  forgot password? link
    Then user should see  Reset Password button on the next page


  Scenario: User should see valid placeholders on Username and Password fields
    Given user is on login page
    Then user should see valid placeholder in username box "username or email"
    Then user should see valid placeholder in password box as "Password"






