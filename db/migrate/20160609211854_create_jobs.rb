class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.date 'dateCreated'
      t.string 'companyName'
      t.string 'jobTitle'
      t.text 'jobDescription'
      t.string 'language'
      t.string 'contactName'
      t.string 'contactNumber'
      t.string 'contactEmail'

    end
  end
  
  def down
    drop_tables 'jobs'
  end
end
