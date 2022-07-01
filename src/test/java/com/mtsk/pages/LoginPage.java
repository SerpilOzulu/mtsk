package com.mtsk.pages;

import com.mtsk.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import javax.xml.xpath.XPath;

public class LoginPage {

public LoginPage(){
    PageFactory.initElements(Driver.getDriver(), this);

}

@FindBy(xpath = "//input[@id='user']")
    public WebElement usernameBox;



    @FindBy(xpath = "//input[@id='password']")
    public WebElement passwordBox;

    @FindBy(xpath = "//input[@id='submit-form']")
    public WebElement loginButton;


    @FindBy(xpath = "//a[@class='toggle-password']")
    public WebElement eyeSign;

    @FindBy(xpath = "//a[@id='lost-password']")
    public WebElement forgotPassword;


     @FindBy(xpath = "//input[@id='reset-password-submit']")
     public WebElement resetPassword;
}
