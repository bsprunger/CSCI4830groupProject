Feature: Editing job listing

  """
  As a data entry clerk In order to provide more accurate listings
  I want to be able to edit my job listing with additional details
  """

  Scenario: Update salary - the user wants to update the salary
    Given there is a joblisting created
    Given Test User is logged in
    Given I visit edit page of joblisting
    And I fill in "jobs jobTitle" with "Changed Title"
    # you can change "jobs jobTitle" field to salary field when salary field is added to edit view
    When I press "Update Job Entry"
    Then joblisting jobTitle should be updated
    And I should be redirected to joblisting page
