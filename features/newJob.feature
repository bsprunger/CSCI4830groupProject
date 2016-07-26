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
    Then I should be on joblisting page
    And System should display "Job Listing was successfully created!"

  Scenario: Unsuccessful posting
    Given I am on new joblisting page
    And I select " " from "jobs dateCreated 1i"
    And I select " " from "jobs dateCreated 2i"
    And I select " " from "jobs dateCreated 3i"
    And I fill in "jobs jobTitle" with "Test Title"
    And I fill in "jobs companyName" with "Test Company"
    And I fill in "jobs contactNumber" with "123456"
    And I fill in "jobs contactName" with "Test Name"
    And I fill in "jobs contactEmail" with "test@email.com"
    When I press "Submit"
    Then I should be on joblisting page
    And System should not display "Job Listing was successfully created!"