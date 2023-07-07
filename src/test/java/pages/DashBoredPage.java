package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.CommonMethods;

public class DashBoredPage extends CommonMethods {

    @FindBy(xpath = "//a[text()='Welcome Admin']")
    public WebElement welcomeMsg ;

    public DashBoredPage(){
        PageFactory.initElements(driver,this);
    }
}
