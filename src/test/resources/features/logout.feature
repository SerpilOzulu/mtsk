
@MTSK-350   @MTSK-428
Feature: MeetSky App Logout Functionality
 User Story: As a user, I should be able to log out

 1-User can log out and ends up in log in page
 2-User can not go to home page again by clicking step back button after successfully logged out.
@logout1  @MTSK-427
Scenario: User can log out and ends up in log in page
  Given user is on home page
  When user clicks Profile menu
  And user clicks log out button
  Then user should log out and login page should be displayed
@logout2   @MTSK-429
  Scenario: User can not go to home page again by clicking step back button after successfully logged out.
    Given user is on home page
    When user clicks Profile menu
    And user clicks log out button
    Then user should log out and login page should be displayed
    And  user clicks back button
    Then user should be still on the same page and should not be able to go back home page