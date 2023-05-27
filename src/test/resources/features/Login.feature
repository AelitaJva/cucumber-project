Feature: Verify Login Feature

  Background:
    Given user opens the website
    And verify user is on login page

    @smoke @aelita
  Scenario: Verify user can login with valid credentials
    When user enters valid credentials
    Then verify user is on home page

      @regression
  Scenario: Verify user can not login with invalid credentials
    When user enters invalid password
    Then verify user could not access home page

        @smoke
  Scenario: Verify user can not login with blank credentials
    When user clicks login button with blank credentials
    Then verify user could not access home page

          @smoke
  Scenario: Verify user can login by copy/paste valid credentials
    When user copy paste valid credentials
    Then verify user is on home page