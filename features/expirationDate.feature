Feature: Set Expiration Date for job listing

  """
  As a data entry clerk In order to provide updated job inventory I want to add expiration date
  to all job listings
  """

  Scenario: Set Expiration Date
    Given there is a joblisting created
    Given I visit edit page of joblisting
    When "jobs jobExpiration" is equal to ""
    And I fill in "jobs jobExpiration" with "2016-01-01"
    When I press "Update Job Entry"
    Then joblisting jobExpiration should be updated
    And I should be redirected to joblisting page

  Scenario: Update Expiration Date
    Given there is a joblisting created
    Given I visit edit page of joblisting
    And I fill in "jobs jobExpiration" with "2016-01-11"
    When I press "Update Job Entry"
    Then joblisting jobExpiration should be updated
    And I should be redirected to joblisting page