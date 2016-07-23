Feature: Post new job

  """
  As a data entry clerk
  I want to create new job openings
  So that I can provide the latest job openings
  """

  Scenario: Successful posting
    Given I am on new joblisting page
    And I select "2014" from "jobs dateCreated 1i"
    And I select "June" from "jobs dateCreated 2i"
    And I select "10" from "jobs dateCreated 3i"
    And I fill in "jobs jobTitle" with "Test Title"
    And I fill in "jobs companyName" with "Test Company"
    And I fill in "jobs contactNumber" with "123456"
    And I fill in "jobs contactName" with "Test Name"
    And I fill in "jobs contactEmail" with "test@email.com"
    When I press "Submit"
#    Then System should display "Job Listing was successfully created!"
    Then I should be on joblisting page

#Feature: Delete job
#
#"""
#  As a data entry clerk In order to provide accurate &amp; open job listings and avoid unwanted
#  Applications for the jobs which are filled. I want to delete job listings
#  """
#
#  Scenario: Delete Job
#    Given I am on job show page
#    When I press "Delete Job Entry"
#    And I should be on joblistings page
#
#Feature: Filter Jobs By Employer
#
#  As a teller to search jobs quickly, I want to search jobs by employer
#
#  Scenario: Filter Most Recent Jobs
#    Given I am on joblistings page
#    And I fill in "search" with "Employer Text"
#    When I press "Enter"
#    And I should be on joblistings page