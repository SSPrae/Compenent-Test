Feature: Import Existing Wallet
  Background: Application is running
  Scenario: Check all on-boarding pages
    Given I am on "on-boarding page1"
    When I slide right 1 time
    Then I should stay on the "on-boarding page1"
    When I slide left 1 time
    Then I am navigated to "on-boarding page2"
    When I slide right 1 time
    Then I should stay on the "on-boarding page1"
    When I slide left 2 time
    Then I am navigated to "on-boarding page3"

  Scenario Import Existing Wallet
    Given I am on "on-boarding page1"
    When I click "I already have a wallet" button
    Then I should see "restore wallet page"
    And I can see "input text box1"

  Scenario Restoring Existing  Wallet
    Given I am on "restore wallet" page
    When I click "input text box1"
    Then I can enter "a" into "input text box1"
    And I should see suggested words below confirm button
    When I enter "aa" into "input text box1"
    Then I should see an error message "Invalid word, please check the spelling"
    When I delete "aaa" from "input text box1"
    And I enter "a" into "input text box1"
    Then I should be able to select "abandon" from suggested words
    And Cursor should be moved to "input text box2"
    And "Confirm" button is disabled
    When I enter "ad" into "input text box2"
    And I select "add" from suggested words
    Then Cursor should be moved to "input text box3"
    When I enter "almost" into "input text box3"
    Then Cursor should be moved to "input text box4"
    When I enter "assist" into "input text box4"
    Then Cursor should be moved to "input text box5"
    When I enter "assume" into "input text box5"
    Then Cursor should be moved to "input text box6"
    When I enter "awesome" into "input text box6"
    Then Cursor should be moved to "input text box7"
    When I enter "beauty" into "input text box7"
    Then Cursor should be moved to "input text box8"
    When I enter "beyond" into "input text box8"
    Then Cursor should be moved to "input text box9"
    When I enter "boat" into "input text box9"
    Then Cursor should be moved to "input text box10"
    When I enter "bright" into "input text box10"
    Then Cursor should be moved to "input text box11"
    When I enter "common" into "input text box11"
    Then Cursor should be moved to "input text box12"
    When I enter "festival" into "input text box12"
    Then "Confirm" button is enabled
    And I can click "Confirm" button

  Scenario: Create passcode
    Given I am on "create passcode" page
    When I click "111111"
    Then I should see "confirm passcode" page
    When I click "111112"
    Then I should see an error popup
    Then I should go back to "create passcode" page
    When I click "111111"
    Then I should see "confirm passcode" page
    When I click "111111"
    Then I create passcode successfully
