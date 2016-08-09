Feature: data entry clerk can access to job openings list

  """
  As a data entry clerk
  Provide the latest job openings
  I want to able to create new job openings
  """
"""
  Scenario: No companies
    Given there are no job openings added in database
    When I go to joblisting page
    Then System display message "No Jobs Found!"

  Scenario: Less companies than requested
    Given: There are some job postings in the database
    And: The system shows less job postings
    When: I reload the page
    Then: The system shows all job postings
"""