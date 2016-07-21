# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


jobs = [{:dateCreated => '2001-01-25', :companyName => 'The Testing Company', :jobTitle => 'Job Tester', :jobDescription => 'Run tests on some jobs.', :language => 'English', :contactName => 'Joe Smith', :contactNumber => '111-1234', :contactEmail => 'Joe@smith.com'},
        {:dateCreated => '2011-09-06', :companyName => 'The Great Candy Co.', :jobTitle => 'Boxer', :jobDescription => 'Ensure the successful loading of all candy boxes.', :language => 'Spanish', :contactName => 'Toothy Decay', :contactNumber => '555-1234', :contactEmail => 'Dentist@Needed.com'},
  	    {:dateCreated => '2006-06-25', :companyName => 'The Testing Company', :jobTitle => 'Slacker', :jobDescription => 'Sit around doing nothing, all the while complaining your piers do not pull thier weight.', :language => 'French', :contactName => 'Joe Smith', :contactNumber => '111-1234', :contactEmail => 'Joe@smith.com'}, 
  	    {:dateCreated => '2015-01-25', :companyName => 'Company X', :jobTitle => 'Classified', :jobDescription => 'Classified', :language => 'English', :contactName => 'Jane Smith', :contactNumber => 'Classified', :contactEmail => 'Classified'},
  	    {:dateCreated => '2016-02-10', :companyName => 'Food Goodness', :jobTitle => 'Checker', :jobDescription => 'Check out customer purchases and accept payment. Basic math skills required.', :language => 'English', :contactName => 'Food Mcgruff', :contactNumber => '963-1234', :contactEmail => 'yum@ymail.com'},
  	    {:dateCreated => '2016-04-19', :companyName => 'Food Goodness', :jobTitle => 'Stocker', :jobDescription => 'Stock shelves on our night shift. Hours 10pm-6am.', :language => 'English', :contactName => 'Food Mcgruff', :contactNumber => '963-1234', :contactEmail => 'yum@ymail.com'},
  	    {:dateCreated => '2016-09-24', :companyName => 'The Best Store Ever', :jobTitle => 'King', :jobDescription => 'On the best day ever work for the best store ever and be the KING!', :language => 'English', :contactName => 'Me Myself andI', :contactNumber => '5-AWSOME', :contactEmail => 'email@address.com'},
  	    {:dateCreated => '2015-10-10', :companyName => 'Games R\'Life', :jobTitle => 'Gamer', :jobDescription => 'Play games all day long and be paid for it!', :language => 'English', :contactName => 'You Wish', :contactNumber => '555-FAKE', :contactEmail => 'gotYou@ymail.com'},
  	    {:dateCreated => '2015-12-01', :companyName => 'Christmas Wrappers Inc.', :jobTitle => 'Wrapper', :jobDescription => 'Wrap gifts for customers.', :language => 'English', :contactName => 'Santy Claws', :contactNumber => '555-1597', :contactEmail => 'north@pole.com'},
  	    {:dateCreated => '2016-01-30', :companyName => 'Street Cleaner Co.', :jobTitle => 'Sweeper', :jobDescription => 'Sweep the streets.', :language => 'German', :contactName => 'Food Mcgruff', :contactNumber => '154-1234', :contactEmail => 'clean@ymail.com'},
  	    {:dateCreated => '2016-03-15', :companyName => 'Mid Month Refinery', :jobTitle => 'Collector', :jobDescription => 'Collect things in the middle of the month.', :language => 'English', :contactName => 'Odd Mc\'Weirdo', :contactNumber => '555-ODDD', :contactEmail => 'odd@ymail.com'},
  	    {:dateCreated => '2016-01-01', :companyName => 'Christmas Returns Inc.', :jobTitle => 'Wrapper', :jobDescription => 'Re-package returned gifts for customers', :language => 'English', :contactName => 'Santy Claws', :contactNumber => '555-1597', :contactEmail => 'north@pole.com'},
  	    {:dateCreated => '2015-02-01', :companyName => 'Company X', :jobTitle => 'Classified', :jobDescription => 'Replace our previous blabber mouth, Jane Smith.. job description is otherwise classified', :language => 'English', :contactName => 'Classified', :contactNumber => 'Classified', :contactEmail => 'Classified'},
  	   ]
 
jobs.each do |item|
  Job.create!(item)
end