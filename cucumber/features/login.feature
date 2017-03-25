Feature: Completing login process

  the final step of login process is to know that user can login with their account
  Background:
    Given I am on the google site

  Scenario: The login page must be reach with click "sign in" button
    When I click on the "Sign in" button
    Then  The page title should "Sign in - Google Accounts"

  Scenario: An Email is required for next step
    When I click on the "Sign in" button
    And I click on "next" button
    Then I should see error message "Enter an email or phone number."

  Scenario: The Next Step must be reach with click "Next" button
    When I click on the "Sign in" button
    And I fill in "Email" with "ali.k24test"
    And I click on "next" button
    Then The button page change into "Sign in"

  Scenario: A Password is required for sign in
    When I click on the "Sign in" button
    And I fill in "Email" with "ali.k24test"
    And I click on "next" button
    And I click on "Sign in"
    Then I should see error message "Please enter your password."

  Scenario: After Login done, the page should be back to Home with email logged
    When I click on the "Sign in" button
    And I fill in "Email" with "ali.k24test"
    And I click on "next" button
    And I fill in "Passwd" with "1234567890qwerty"
    And I click on "Sign in"
    Then I should see home page with "ali.k24test@gmail.com" on the top right

  Scenario: Open Mail must be done after login
    When I click on the "Sign in" button
    And I fill in "Email" with "ali.k24test"
    And I click on "next" button
    And I fill in "Passwd" with "1234567890qwerty"
    And I click on "Sign in"
    And I click on the "Gmail" button
    Then I should see "Inbox" Page

  Scenario: Open Mail with "Gmail" link on the top menu
    When I click on the "Gmail" button
    And I click on the "Sign in" button
    And I fill in "Email" with "ali.k24test"
    And I click on "next" button
    And I fill in "Passwd" with "1234567890qwerty"
    And I click on "Sign in"
    And I click on the "Gmail" button
    Then I should see "Inbox" Page

  Scenario: Search Message from Muhtar in Gmail
    When I click on the "Gmail" button
    And I click on the "Sign in" button
    And I fill in "Email" with "ali.k24test"
    And I click on "next" button
    And I fill in "Passwd" with "1234567890qwerty"
    And I click on "Sign in"
    And I click on the "Gmail" button
    And I fill in search with "muhtar"
    And I click "Search Gmail"
    Then I should see "No messages matched your search" in inbox

  Scenario: Search Message from Andy in Gmail
    When I click on the "Gmail" button
    And I click on the "Sign in" button
    And I fill in "Email" with "ali.k24test"
    And I click on "next" button
    And I fill in "Passwd" with "1234567890qwerty"
    And I click on "Sign in"
    And I click on the "Gmail" button
    And I fill in search with "andy"
    And I click "Search Gmail"
    Then I should see message "Andy form Google"

  Scenario: click the top button show the sign out button
    When I click on the "Sign in" button
    And I fill in "Email" with "ali.k24test"
    And I click on "next" button
    And I fill in "Passwd" with "1234567890qwerty"
    And I click on "Sign in"
    And I click on top right button
    Then I should see "Sign out" button
