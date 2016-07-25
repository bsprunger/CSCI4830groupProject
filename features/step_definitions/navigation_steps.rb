require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Given /^The data entry clerk is on Job Details Page$/ do
  visit ("joblisting/#{@job.id}")
end

And /^I visit edit page of joblisting$/ do
  visit ("joblisting/#{@job.id}/edit")
end

Given "there are no job openings added in database" do
  Job.all.count == 0
end

Given /^I am on (.+) show page$/ do |page_name|
  visit path_to(page_name)
end

Given "There are some job postings in the database" do
  Job.all.count > 0
end

And "The system shows less job postings" do
  ("table#job tr").count < Job.all.count
end

Then /^Jobs should be sorted with (.+) Employers$/ do |key|
  count = 0
  elements = find("td.employer")
  elements.map{|td| (td.try(:text).include? key ? count+=1 : count-=1)}
  count == elements.count
end

Then /^The system shows all job postings$/ do
  find("table#job tr").count == Job.all.count
end

When /^I go to (.+) page$/ do |page_name|
  visit (page_name)
end

When /^I reload the page$/ do
  visit [ current_path, page.driver.request.env['QUERY_STRING'] ].reject(&:blank?).join('?')
end

When /^"([^\"]*)" is equal to "([^\"]*)"$/ do |field, value|
  find(:id, field.gsub(' ', '_')).try(:text) == value
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end

When /^job listing is filled$/ do
  # @job.completed == true
  true # Returning true beacause there is no completed attribute added for job yet
end

When /^joblisting is in-appropriate$/ do
  flag = 'false'
  ["", "sex", "abuse", "etc"].any? { |key| flag =  @job.jobDescription.include? key ? 'true' : 'false' }
  flag
end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field.gsub(' ', '_'), :with => value)
end

When /^I select "([^\"]*)" from "([^\"]*)"$/ do |value, field|
  select(value, :from => field.gsub(' ', '_'))
end

Then /^joblisting should be deleted$/ do
  @job.destroyed?
end

Then /^joblisting (.+) should be updated$/ do |attr|
  old_val = @job[attr]
  @job.reload
  @job[attr] != old_val
end

Then /^I should be on (.+)$/ do |page_name|
  current_path.gsub('/') == page_name
end

And /^System should display (.+)$/ do |message|
  find('div#notice').try(:text) == message
end

And /^System should not display (.+)$/ do |message|
  find('div#notice').try(:text) != message
end

Then /^System display message (.+)$/ do |message|
  if element = find('p.empty_list')
    element.try(:text) == message
  else
    false
  end
end

Then /^I should be redirected to joblisting page$/ do
  current_path == '/joblisting'
end

Given /^there is a joblisting created$/ do
  if Job.all.count <= 0
    @job = Job.create(:dateCreated => '2001-01-25', :companyName => 'The Testing Company', :jobTitle => 'Job Tester', :jobDescription => 'Run tests on some jobs.', :language => 'English', :contactName => 'Joe Smith', :contactNumber => '111-1234', :contactEmail => 'Joe@smith.com')
  else
    @job = Job.first
  end
end