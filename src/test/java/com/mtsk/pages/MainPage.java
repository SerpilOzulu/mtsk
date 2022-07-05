package com.mtsk.pages;

import com.mtsk.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class MainPage {

    public MainPage(){
        PageFactory.initElements(Driver.getDriver(), this);
    }


    @FindBy(xpath = "//li[@data-id='logout']/a")
    public WebElement LogoutButton;




    @FindBy(xpath = "//div[@class='avatardiv avatardiv-shown']")
    public WebElement profileMenu;

}
