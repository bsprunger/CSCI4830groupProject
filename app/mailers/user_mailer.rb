class UserMailer < ApplicationMailer
    default :from => "CSCIgroupproject@gmail.com"
    
    # Method for sending the registration email
    def registration_confirmation(user)
        mail(:to => user.email, :subject => "Registered")
    end
    
    # Method for sending the database to a user
    def email_database(user)
        @jobs = Job.all
        mail(:to => user.email, :subject => "Job opportunities!")
    end
end
