# cucumber
  Scenario: click the top button show the sign out button     When I click on the "Sign in" button     And I fill in "Email" with "ali.k24test"     And I click on "next" button     And I fill in "Passwd" with "1234567890qwerty"     And I click on "Sign in"     And I click on top right button     Then I should see "Sign out" button
