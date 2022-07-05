package com.mtsk.stepDefinitions;

import com.mtsk.pages.LoginPage;
import com.mtsk.pages.MainPage;
import com.mtsk.utilities.ConfigurationReader;
import com.mtsk.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Logout_StepDefinitions {

    MainPage mainPage=new MainPage();
    LoginPage loginPage=new LoginPage();
    @Given("user is on home page")
    public void userIsOnHomePage() {
        Driver.getDriver().get(ConfigurationReader.getProperty("login.page.url"));
        loginPage.usernameBox.sendKeys("Employee31");
        loginPage.passwordBox.sendKeys("Employee123");
        loginPage.loginButton.click();
       String actualPageTitle=  Driver.getDriver().getTitle();
       String homepageTitle="Files - Meetsky - QA";
        Assert.assertEquals(homepageTitle, actualPageTitle);
    }

    @When("user clicks Profile menu")
    public void userClicksProfileMenu() {
        mainPage.profileMenu.click();
    }

    @And("user clicks log out button")
    public void userClicksLogOutButton() {
        mainPage.LogoutButton.click();

    }

    @Then("user should log out and login page should be displayed")
    public void userShouldLogOutAndLoginPageShouldBeDisplayed() {
        String loginPageTitle="Meetsky - QA";
        String actualPageTitle2= Driver.getDriver().getTitle();
        Assert.assertEquals(loginPageTitle, actualPageTitle2);
    }



    @And("user clicks back button")
    public void userClicksBackButton() {
        Driver.getDriver().navigate().back();
    }

    @Then("user should be still on the same page and should not be able to go back home page")
    public void userShouldBeStillOnTheSamePageAndShouldNotBeAbleToGoBackHomePage() {
        String expectedPageTitle="Meetsky - QA";
        String actualPageTitle3= Driver.getDriver().getTitle();
        Assert.assertEquals(expectedPageTitle, actualPageTitle3);
    }



}
