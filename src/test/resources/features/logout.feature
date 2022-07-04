Feature: MeetSky App Logout Functionality
 User Story: As a user, I should be able to log out

 1-User can log out and ends up in log in page
 2-User can not go to home page again by clicking step back button after successfully logged out.

Scenario: User can log out and ends up in log in page
  Given user is on home page
  When user clicks Profile menu
  And user clicks sing out button
  Then user should log out

  Scenario: User can not go to home page again by clicking step back button after successfully logged out.
    Given user is on home page
    When user clicks Profile menu
    And user clicks sing out button
    Then user should log out
    And  user clicks back button
    Then user should be still on the same page and should not be able to go back home page