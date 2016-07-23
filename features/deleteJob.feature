Feature: Delete job

"""
  As a data entry clerk In order to provide accurate &amp; open job listings and avoid unwanted
  Applications for the jobs which are filled. I want to delete job listings
  """

  Scenario: Delete Job
    Given I am on joblisting show page
    When I press "Delete Job Entry"
    And I should be on joblistings page