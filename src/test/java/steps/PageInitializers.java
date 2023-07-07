package steps;

import pages.DashBoredPage;
import pages.LoginPage;

public class PageInitializers {
    public static LoginPage loginPage;
    public static DashBoredPage dashBoredPage;

    public static void InitializersPageObjects(){
        loginPage = new LoginPage();
        dashBoredPage = new DashBoredPage();
    }
}
