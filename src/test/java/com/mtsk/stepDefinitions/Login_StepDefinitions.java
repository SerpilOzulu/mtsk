package com.mtsk.stepDefinitions;

import com.mtsk.pages.LoginPage;
import com.mtsk.utilities.ConfigurationReader;
import com.mtsk.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Login_StepDefinitions {

LoginPage loginPage =new LoginPage();
    @Given("user is on login page")
    public void userIsOnLoginPage() {
        Driver.getDriver().get(ConfigurationReader.getProperty("meetsky.url"));

    }

    @When("User enters username {string}")
    public void user_enters_username(String string) {

    }
    @When("User enters password {string}")
    public void user_enters_password(String string) {

    }
    @When("User clicks login button")
    public void user_clicks_login_button() {

    }
    @Then("user should see homepage")
    public void user_should_see_homepage() {

    }



}
