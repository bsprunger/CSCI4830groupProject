class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string 'jobNumber'
      t.text 'jobDescription'
    end
  end
  
  def down
    drop_tables 'jobs'
  end
end
