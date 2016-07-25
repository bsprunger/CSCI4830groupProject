Feature: Finding user by last name

  As a teller
  In order to find the client with less time and effort.
  I want to be able to find the clients by last name

  Scenario: Find client by last name
    Given: On the search options I select by last name
    When: I submit the last name
    Then: System should display the client with that specific last name.