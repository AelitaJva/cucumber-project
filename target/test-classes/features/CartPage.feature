Feature: Verify CartPAge Functionality

  # this my comment
  Background: Execute steps before each scenario
    Given user is on login page
    When user enters valid credentials
    Then verify user is on home page
    When user clicks on add to cart button of any random item
    And  click on cart icon

  Scenario: Verify user can add item to cart
    Then verify user is on Cart page
    And verify item details on the cart page

  Scenario: Verify continue shopping button navigates user on home page
    Then verify user is on Cart page
    When user clicks on continue shopping button
    Then verify user is on home page


  Scenario: Verify user can remove the item from cart
    Then verify user is on Cart page
    When user clicks on remove button of item
    Then verify item is removed from the cart

  Scenario: Verify user can see country dropdown
    Then verify country dropdown displayed on cart page
    And verify dropdown has following value
      | Kyrgyzstan |
      | USA        |
      | Japan      |
      | Germany    |
      | Canada     |
      | India      |
      | Ukraine    |
    When user clicks on checkout button
    Then verify user is on checkout button
    And validate following data on checkout page
      | Airi Satou         | Accountant                    | Tokyo         | 33  | 28.11.2008 |
      | Angelica Ramos     | Chief Executive Officer (CEO) | London        | 47  | 09.10.2009 |
      | Ashton Cox         | Junior Technical Author       | San Francisco | 66  | 12.01.2009 |
      | Bradley Greer      | Software Engineer             | London        | 41  | 13.10.2012 |
      | Brenden Wagner     | Software Engineer             | San Francisco | 28  | 07.06.2011 |
      | Brielle Williamson | Integration Specialist        | New York      | 61  | 02.12.2012 |
      | Bruno Nash         | Software Engineer             | London        | 38  | 03.05.2011 |
      | Caesar Vance       | Pre-Sales Support             | New York      | 21  | 12.12.2011 |
      | Cara Stevens       | Sales Assistant               | New York      | 46  | 06.12.2011 |
      | Cedric Kelly       | Senior Javascript Developer   | Edinburgh     | 22  | 29.03.2012 |
      | Name               | Position                      | Office        | Age | Start date |
