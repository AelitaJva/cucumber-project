package com.automation.steps;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.List;

public class StepDefinition {

    @Before
    public void setUp () {
    }

    @After
    public void cleanUp () {
    }

    @Given("user opens the website")
    public void user_opens_the_website() {
        
        
    }

    @Given("verify user is on login page")
    public void verify_user_is_on_login_page() {
        
        
    }

    @When("user enters valid credentials")
    public void user_enters_valid_credentials() {
        
        
    }

    @Then("verify user is on home page")
    public void verify_user_is_on_home_page() {
        
        
    }

    @When("user enters invalid password")
    public void user_enters_invalid_password() {
        
        
    }

    @Then("verify user could not access home page")
    public void verify_user_could_not_access_home_page() {
        
        
    }

    @When("user clicks login button with blank credentials")
    public void user_clicks_login_button_with_blank_credentials() {
        
        
    }

    @When("user copy paste valid credentials")
    public void user_copy_paste_valid_credentials() {
        
        
    }

    @Given("user is on login page")
    public void user_is_on_login_page() {
        
        
    }

    @When("user clicks on add to cart button of any random item")
    public void user_clicks_on_add_to_cart_button_of_any_random_item() {
        
        
    }

    @When("click on cart icon")
    public void click_on_cart_icon() {
        
        
    }

    @Then("verify user is on Cart page")
    public void verify_user_is_on_cart_page() {
        
        
    }

    @Then("verify item details on the cart page")
    public void verify_item_details_on_the_cart_page() {
        
        
    }

    @When("user clicks on continue shopping button")
    public void user_clicks_on_continue_shopping_button() {
        
        
    }

    @When("user clicks on remove button of item")
    public void user_clicks_on_remove_button_of_item() {
        
        
    }

    @Then("verify item is removed from the cart")
    public void verify_item_is_removed_from_the_cart() {
        
        
    }

    @When("user enters user name {string} and password {string}")
    public void userEntersUserNameAndPassword(String username, String password) {
        System.out.println("Login with user name " + username);
        System.out.println("Login with password" + password);

    }
    @When("user enters username {string} and password {string}")
    public void userEntersUsernameAndPassword(String username, String password) {
        System.out.println("Login with user name " + username);
        System.out.println("Login with password" + password);
    }


    // Passing one row
//    @And("verify dropdown has following value")
//    public void verifyDropdownHasFollowingValue(List<String> countries) {
//
//        for (String country : countries) {
//            System.out.println(country);
//        }
//    }

    @And("verify dropdown has following value")
    public void verifyDropdownHasFollowingValue(DataTable dt) {
        List <String> countries = dt.asList();

        for (String county : countries) {
            System.out.println(county);
        }
    }

    @Then("verify country dropdown displayed on cart page")
    public void verifyCountryDropdownDisplayedOnCartPage() {

    }

    @When("user clicks on checkout button")
    public void userClicksOnCheckoutButton() {

    }

    @Then("verify user is on checkout button")
    public void verifyUserIsOnCheckoutButton() {

    }

    @And("validate following data on checkout page")
    public void validateFollowingDataOnCheckoutPage(DataTable dt) {
        List<List<String>> listOfListOfData = dt.asLists();

        for (List<String> packet: listOfListOfData) {

            // all
//            for (String cookie : packet) {
//                System.out.print(cookie + " ");
//            }
//            System.out.println();

            System.out.print(packet.get(0) + " ");
            System.out.print(packet.get(1) + " ");
            System.out.println();

        }
    }
}
