Feature: Delete job

"""
  As a data entry clerk In order to provide accurate &amp; open job listings and avoid unwanted
  Applications for the jobs which are filled. I want to delete job listings
  """

  Scenario: Delete Job
    Given there is a joblisting created
    Given The data entry clerk is on Job Details Page
    When I press "Delete Job Entry"
    Then joblisting should be deleted
    And I should be redirected to joblisting page

  Scenario: Delete Job if completed
    Given there is a joblisting created
    Given The data entry clerk is on Job Details Page
    When job listing is filled
    When I press "Delete Job Entry"
    Then joblisting should be deleted
    And I should be redirected to joblisting page

  Scenario: Delete Job if In-appropriate
    Given there is a joblisting created
    Given The data entry clerk is on Job Details Page
    When joblisting is in-appropriate
    When I press "Delete Job"
    Then joblisting should be deleted
    And I should be redirected to joblisting page