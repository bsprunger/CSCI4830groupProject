Feature: Filter Recent Jobs or By Employer

  """
  As a teller to search jobs quickly, I want to Filter Most Recent Jobs or search by employer
  """

  Scenario: Filter Jobs By Employer
    Given I am on joblisting index page
    And I fill in "search" with "test \n"
    When I press "Refresh"
    Then Jobs should be sorted with "test" Employers

  Scenario: Filter Most Recent Jobs
  # No Recent Filter exists as of yet to filter recent jobs
#    Given I am on joblisting index Page
#    And I fill in "search" with "test \n"
#    Then Jobs should be sorted with "test" Employers