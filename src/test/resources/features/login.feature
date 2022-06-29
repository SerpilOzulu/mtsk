Feature: MeetSky App Login Feature
  User Story :  As a user, I should be able to login.

Scenario Outline:  User can login with valid credentials
  When User enters "<valid username>"
  And User enters "<valid password>"
  And User clicks login button
  Then user should see homepage
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
    When User enters "<invalid username>"
    And User enters "<valid password>"
    And User clicks login button
    Then user should not see homepage and should see "notice message" as "Wrong username or password. "
    Examples: valid credentials
      | invalid username     | valid password |
      | E                    | Employee123    |
      | Employee21123456     | Employee123    |
      | Employee31flgmb48854 | Employee123    |
      | Employe              | Employee123    |
      | Employ  ee5          | Employee123    |
      | Employee61           | Employee123    |
      | Employee71           | Employee123    |
      | ployee81             | Employee123    |
      | 1                    | Employee123    |
      | ,                    | Employee123    |
      | Employee111          | Employee123    |
      | .1                   | Employee123    |
      | 22                   | Employee123    |


#-Credentials should contain at least 2, at most 15 characters.
#2-User can not login with any invalid credentials
#-"Wrong username or password." should be displayed for invalid credentials
#-"Please fill out this field" message should be displayed if the password or username is empty
#3-User can see the password in a form of dots by default
#4-User can see the password explicitly if needed
#5-User can see the "Forgot password?" link on the login page and can see the "Reset Password" button on the next page after clicking on forget password link
#6-User can see valid placeholders on Username and Password fields

