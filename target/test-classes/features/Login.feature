Feature: Verify Login Feature

  Background:
    Given user opens the website
    And verify user is on login page

  @smoke @aelita
  Scenario: Verify user can login with valid credentials
    When user enters user name "admin" and password "admin123"
    Then verify user is on home page


    # Data Driven Testing
  @regression
  Scenario Outline: Verify user can not login with invalid credentials
    When user enters username "<username>" and password "<password>"
    Then verify user could not access home page
    Examples:
      | username | password  |
      | demo     | demo@123  |
      |          |           |
      | ADMIN    | ADMIN@123 |
      | admin    | admin@123 |
      | demo     | admin@123 |



    # Pass the data from the feature file and utilize java method for all these steps
#  @smoke
#  Scenario: Verify user can not login with blank credentials
#    When user enters username "" and password ""
#    Then verify user could not access home page
#
#  @smoke
#  Scenario: Verify user can not login with valid username and invalid password
#    When user enters username "admin" and password "demo@123"
#    Then verify user could not access home page
#
#  @smoke
#  Scenario: Verify user can not login with invalid username and valid password
#    When user enters username "demo" and password "admin@123"
#    Then verify user could not access home page
#
#  @smoke
#  Scenario: Verify user can not login with valid credentials in capital letter
#    When user enters username "ADMIN" and password "ADMIN@123"
#    Then verify user could not access home page

  @smoke
  Scenario: Verify user can login by copy/paste valid credentials
    When user copy paste valid credentials
    Then verify user is on home page