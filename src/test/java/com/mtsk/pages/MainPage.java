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


    @FindBy(xpath = "//span[@class='user-status-menu-item__header']")
    public WebElement profileMenu;

}
