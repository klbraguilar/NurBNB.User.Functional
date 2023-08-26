@Usuario
Feature: Perform a user creation

  Scenario: Perform user creation with valid details
    Given an user with valid details
      | userName    | usertest8       |
      | email       | u8@gmail.com    |
      | password    | empanadas       |
    When request is submitted for user creation
    Then verify that the User HTTP response is 200
    And a item id is returned

  Scenario: Perform a failed user creation
    Given an user with invalid details
      | userName    | usertest8   |
      | password    | password1   |
    When request is submitted for user creation
    Then verify that the User HTTP response is 500