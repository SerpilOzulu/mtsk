package com.mtsk.stepDefinitions;

import com.mtsk.pages.LoginPage;
import com.mtsk.utilities.ConfigurationReader;
import com.mtsk.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Login_StepDefinitions {
LoginPage loginPage = new LoginPage();



    @Given("user is on login page")
    public void user_is_on_login_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("search"));
    }
    @When("User enters username {string}")
    public void user_enters_username(String string) {
      //  loginPage.usernameBox.sendKeys(string);
    }
    @When("User enters password {string}")
    public void user_enters_password(String string) {
      //  loginPage.passwordBox.sendKeys(string);

    }
    @When("User clicks login button")
    public void user_clicks_login_button() {
        // loginPage.loginButton.click();
    }
    @Then("user should see homepage")
    public void user_should_see_homepage() {
        String expectedTitle= "";
        String actualTitle= Driver.getDriver().getTitle();

    }


    @When("User enters invalid username {string}")
    public void userEntersInvalidUsername(String arg0) {
        loginPage.usernameBox.sendKeys(arg0);
    }

    @And("User enters valid password {string}")
    public void userEntersValidPassword(String arg0) {
        loginPage.passwordBox.sendKeys(arg0);
    }

    @Then("user should not see homepage and should be still on login page")
    public void userShouldNotSeeHomepageAndShouldBeStillOnLoginPage() {
        String actual=Driver.getDriver().getTitle();
        String expected="";
        Assert.assertEquals(expected,actual);
    }

    @Then("user should see {string} as {string}")
    public void userShouldSeeAs(String arg0, String arg1) {
    }

    @When("User enters valid username{string}")
    public void userEntersValidUsername(String arg0) {
    }

    @And("User enters invalid password {string}")
    public void userEntersInvalidPassword(String arg0) {
    }

    @When("User enters empty username {string}")
    public void userEntersEmptyUsername(String arg0) {
    }

    @And("User enters valid and invalid password {string}")
    public void userEntersValidAndInvalidPassword(String arg0) {
    }

    @When("User enters a username {string} that is more than {int} characters")
    public void userEntersAUsernameThatIsMoreThanCharacters(String arg0, int arg1) {
    }

    @And("User enters  a password {string}")
    public void userEntersAPassword(String arg0) {
    }

    @And("User enters  a password {string} that is more than {int} characters")
    public void userEntersAPasswordThatIsMoreThanCharacters(String arg0, int arg1) {
    }

    @When("User enters valid and invalid username {string}")
    public void userEntersValidAndInvalidUsername(String arg0) {
    }

    @And("User enters empty password {string}")
    public void userEntersEmptyPassword(String arg0) {
    }

    @Then("user should see the password in a form of dots by default")
    public void userShouldSeeThePasswordInAFormOfDotsByDefault() {
    }

    @And("user clicks eye sign on the password box")
    public void userClicksEyeSignOnThePasswordBox() {
    }

    @Then("user should see the password as written")
    public void userShouldSeeThePasswordAsWritten() {
    }

    @When("user should see forgot password? link on the login page")
    public void userShouldSeeForgotPasswordLinkOnTheLoginPage() {
    }

    @And("User clicks on  forgot password? link")
    public void userClicksOnForgotPasswordLink() {
    }

    @Then("user should see  Reset Password button on the next page")
    public void userShouldSeeResetPasswordButtonOnTheNextPage() {
    }

    @Then("user should see valid placeholder in username box {string}")
    public void userShouldSeeValidPlaceholderInUsernameBox(String arg0) {
    }

    @Then("user should see valid placeholder in password box as {string}")
    public void userShouldSeeValidPlaceholderInPasswordBoxAs(String arg0) {
    }
}
