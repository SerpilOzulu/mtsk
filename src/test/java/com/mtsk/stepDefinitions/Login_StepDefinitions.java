package com.mtsk.stepDefinitions;

import com.mtsk.pages.LoginPage;
import com.mtsk.utilities.BrowserUtils;
import com.mtsk.utilities.ConfigurationReader;
import com.mtsk.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;

import java.nio.file.LinkOption;

public class Login_StepDefinitions {
LoginPage loginPage = new LoginPage();

    @Given("user is on login page")
    public void user_is_on_login_page() {
        Driver.getDriver().get(ConfigurationReader.getProperty("login.page.url"));
    }
    @When("User enters username {string}")
    public void user_enters_username(String string) {
        loginPage.usernameBox.sendKeys(string);
    }
    @When("User enters password {string}")
    public void user_enters_password(String string) {
        loginPage.passwordBox.sendKeys(string);
    }
    @When("User clicks login button")
    public void user_clicks_login_button() {
        loginPage.loginButton.click();
    }
    @Then("user should see homepage")
    public void user_should_see_homepage() {
        String expectedTitle= "Files - Meetsky - QA";
        String actualTitle= Driver.getDriver().getTitle();
        Assert.assertEquals(expectedTitle,actualTitle);

    }




    @When("User enters invalid username {string}")
    public void user_enters_invalid_username(String string) {
       loginPage.usernameBox.sendKeys(string);
    }
    @When("User enters valid password {string}")
    public void user_enters_valid_password(String string) {
     loginPage.passwordBox.sendKeys(string);
    }
    @Then("user should not see homepage and should be still on login page")
    public void user_should_not_see_homepage_and_should_be_still_on_login_page() {
      String actualText= Driver.getDriver().getTitle();
      String expectedText="Meetsky - QA";   //loginpage text
        Assert.assertEquals(expectedText,actualText);
    }
    @Then("user should see notice message as {string}")
    public void user_should_see_notice_message_as(String string) {
        String noticeMessage=Driver.getDriver().findElement(By.xpath("//p[@class='warning wrongPasswordMsg']")).getText();
        Assert.assertEquals(string, noticeMessage);



    }



    @When("User enters valid username {string}")
    public void userEntersValidUsername(String arg0) {
        loginPage.usernameBox.sendKeys(arg0);
    }

    @When("User enters invalid password {string}")
    public void user_enters_invalid_password(String string) {
      loginPage.passwordBox.sendKeys(string);
    }


    @Then("user should see notice message  as {string}")
    public void userShouldSeeNoticeMessageAs(String arg0) {
        String ActualNoticeMessage=Driver.getDriver().findElement(By.xpath("//p[@class='warning wrongPasswordMsg']")).getText();
        Assert.assertEquals(arg0, ActualNoticeMessage);


    }



    @When("User enters empty username {string}")
    public void user_enters_empty_username(String string) {
      loginPage.usernameBox.sendKeys(string);
    }
    @When("User enters valid and invalid password {string}")
    public void user_enters_valid_and_invalid_password(String validAndInvalidPassword) {
        loginPage.passwordBox.sendKeys(validAndInvalidPassword);
    }

    @Then("user should see  notice2 message as {string}")
    public void userShouldSeeNotice2MessageAs(String arg01) {
        String actualNotice2Message= loginPage.usernameBox.getAttribute("validationMessage");
        Assert.assertEquals(arg01,actualNotice2Message);
    }

    @When("User enters a username {string} that is more than fifteen characters")
    public void userEntersAUsernameThatIsMoreThanFifteenCharacters(String arg0) {
        loginPage.usernameBox.sendKeys(arg0);
    }

    @And("User enters  a password {string}")
    public void userEntersAPassword(String arg0) {
        loginPage.passwordBox.sendKeys(arg0);
    }

    @Then("user should see notice3 message  as {string}")
    public void userShouldSeeNotice3MessageAs(String arg1) {
        String actualNotice3Message=Driver.getDriver().findElement(By.xpath("//p[@class='warning wrongPasswordMsg']")).getText();
        Assert.assertEquals(arg1,actualNotice3Message);

    }



    @When("User enters a username {string} that is less than two characters")
    public void user_enters_a_username_that_is_less_than_two_characters(String string) {
        loginPage.usernameBox.sendKeys(string);

    }
    @When("User enters  a password {string} that is less than two characters")
    public void user_enters_a_password_that_is_less_than_two_characters(String string) {
        loginPage.passwordBox.sendKeys(string);
    }
    @Then("user should see notice4 message as {string}")
    public void user_should_see_notice4_message_as(String string) {
        BrowserUtils.waitForPageToLoad(20);
       String actualNotice4Message=Driver.getDriver().findElement(By.xpath("//p[@class='warning wrongPasswordMsg']")).getText();
        BrowserUtils.waitForPageToLoad(20);
        Assert.assertEquals(string,actualNotice4Message);


    }


    @When("User enters valid and invalid username {string}")
    public void user_enters_valid_and_invalid_username(String string) {
      loginPage.usernameBox.sendKeys(string);
    }
    @When("User enters empty password {string}")
    public void user_enters_empty_password(String string) {
        loginPage.passwordBox.sendKeys(string);
    }
    @Then("user should see notice5 message as {string}")
    public void user_should_see_notice5_message_as(String string) {
      String actualNotice5Message=  loginPage.passwordBox.getAttribute("validationMessage");
      Assert.assertEquals(string,actualNotice5Message);
    }


    @When("User enters  valid and invalid password {string}")
    public void userEntersValidAndInvalidPassword(String arg0) {
       loginPage.passwordBox.sendKeys(arg0);

    }


    @Then("user should see the password in a form of dots by default")
    public void userShouldSeeThePasswordInAFormOfDotsByDefault() {
        Assert.assertEquals("password", loginPage.passwordBox.getAttribute("type"));


    }


    @When("user clicks eye sign on the password box")
    public void user_clicks_eye_sign_on_the_password_box() {
      loginPage.eyeSign.click();
    }
    @Then("user should see the password as written in a form of text")
    public void userShouldSeeThePasswordAsWrittenInAFormOfText() {

     String actualSeenPassword=  loginPage.passwordBox.getAttribute("type");
     Assert.assertEquals("text",actualSeenPassword);


    }


    @When("user should see forgot password? link on the login page")
    public void userShouldSeeForgotPasswordLinkOnTheLoginPage() {
     Assert.assertTrue( Driver.getDriver().findElement(By.xpath("//a[@id='lost-password']")).isDisplayed()  );

    }

    @And("User clicks on  forgot password? link")
    public void userClicksOnForgotPasswordLink() {
        loginPage.forgotPassword.click();
    }

    @Then("user should see  Reset Password button on the next page")
    public void userShouldSeeResetPasswordButtonOnTheNextPage() {
        Assert.assertTrue(Driver.getDriver().findElement(By.xpath("//input[@id='reset-password-submit']")).isDisplayed());

    }

    @Then("user should see valid placeholder in username box {string}")
    public void userShouldSeeValidPlaceholderInUsernameBox(String placeHolderUsername) {
        Assert.assertEquals(placeHolderUsername, loginPage.usernameBox.getAttribute("placeholder"));


    }

    @Then("user should see valid placeholder in password box as {string}")
    public void userShouldSeeValidPlaceholderInPasswordBoxAs(String placeHolderPassword) {
        Assert.assertEquals(placeHolderPassword, loginPage.passwordBox.getAttribute("placeholder"));
    }



}


