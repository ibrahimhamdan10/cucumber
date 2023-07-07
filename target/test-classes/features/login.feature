Feature: Login related scenario

  Background:
    Given user is navigated to HRMS application


@test1
  Scenario: Valid admin login
    When user enters "admin" and "Hum@nhrm123"
    And  user clicks on login button
    Then user is successfully logged in the application
  @test2
  Scenario: Enter as a valid Admin
    When user enters the username "Admin" and the password "Hum@nhrm123"
    And clicks on login Btn
    Then the user is logged in and verifies the message "Welcome Admin"

  @test3
  Scenario Outline: validate the error message for wrong credentials
    When user enters the username "<username>" and the password "<password>"
    And clicks on login Btn
    Then the user is not logged in and verifies the message "<errorMsg>"
    Examples:
      |username|password|errorMsg|
      |Admin   |Hum     |Invalid credentials|
      |        |Hum@nhrm123|Username cannot be empty|

  @dataTable
  Scenario:validate that error message is correct
    When the user Enters the userName password and clicks on login button Then the errorMsg is verified
      |username|password|errorMsg|
      |Admin   |123 |Invalid credentials|
      |        |Hum@norm123|Username cannot be empty|