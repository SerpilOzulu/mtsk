@MTSK-349
Feature:MeetSky App Login Feature
  User Story :  As a user, I should be able to login.
   @login1 @positive
Scenario Outline:User can login with valid credentialsGiven user is on login page
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


 @login2  @negative
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
      | Employee613           | Employee123    |
      | Employeee711           |Employee123    |
      | ployee81             | Employee123    |
      | 1                    | Employee123    |
      | ,                    | Employee123    |
      | Employee1111          | Employee123    |
      | .1                   | Employee123    |
      | 22                   | Employee123    |



 @login3 @negative
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
      | Employee61     | Empl             |
      | Employee71     | E                |
      | Employee81     | Employee12312312 |
      | Employee91     | Employee12332    |
      | Employee121    | oyee123          |
      | Employee111    | ee123            |
      | Employee121    | ?                |
      | Employee131    | Empl..123        |

       @login4  @negative
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
      | Employee615           | Empl             |
      | Employee71 7          | E!!              |
      | Emp                   |oyee123           |
      | Empl???????????oyee91 | Empee123         |
      | Employeeee101         | oyee123          |
      | Employe.fkge111       | ee123            |
      | Employfortğtğee121    | ?                |
      | Emefnfmmployee131     | Empl..123        |

@negative @login5
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


   @negative  @login6
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

  @negative  @login7
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

  @login8 @negative
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


  @login9
  Scenario Outline:User can see the password in a form of dots by default
    Given user is on login page
    When User enters  valid and invalid password "<password>"
    Then user should see the password in a form of dots by default
    Examples:
      | password    |
      | Employee123 |
      | emp         |


  @login10
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
      | \?          |
      | ...         |
      | ABCD        |



















  @login11
  Scenario:User should see the "Forgot password?" link on the login page and can see the
  "Reset Password" button on the next page after clicking on forget password link
    Given user is on login page
    When user should see forgot password? link on the login page
    And User clicks on  forgot password? link
    Then user should see  Reset Password button on the next page

@login12
  Scenario:User should see valid placeholders on Username and Password fields
    Given user is on login page
    Then user should see valid placeholder in username box "username or email"
    Then user should see valid placeholder in password box as "Password"



