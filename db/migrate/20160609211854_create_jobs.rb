class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string 'jobNumber'
      t.text 'jobDescription'
      t.strin 'contactNumber'
      t.string 'contactName'
      t.string 'contact email'
      t.string 'companyName'
    end
  end
  
  def down
    drop_tables 'jobs'
  end
end
