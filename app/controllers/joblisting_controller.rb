class JoblistingController < ApplicationController
    # index method of joblisting_controller.rb
    def index
        @jobs = Job.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
        @users = User.all
    end
    
    # paramaters of the jobs database
    def job_params
        params.require(:jobs).permit(:dateCreated, :companyName, :jobTitle, :jobDescription, :language, :contactNumber, :contactName, :contactEmail)
    end
    
    # show method of joblisting_controller.rb
    def show
        id = params[:id]
        @jobs = Job.find(id)
    end
    
    # create method of joblisting_controller.rb
    def create
        @jobs = Job.create!(job_params)
        flash[:notice] = "Job Listing was successfully created!"
        redirect_to '/joblisting'
    end
    
    # edit method of joblisting_controller.rb
    def edit
        @jobs = Job.find params[:id]
    end
    
    # update method of joblisting_controller.rb
    def update
        @jobs = Job.find params[:id]
        @jobs.update_attributes!(job_params)
        flash[:notice] = "#{@jobs.jobTitle} was successfully updated."
        redirect_to joblisting_path(@jobs)
    end
    
    # destroy method of joblisting_controller.rb
    def destroy
        @jobs = Job.find(params[:id])
        @jobs.destroy
        flash[:notice] = "Job '#{@jobs.jobTitle}' deleted."
        redirect_to joblisting_index_path
    end
    
    def new
        # default: render 'new' template
    end
    
    # send_database_email method of joblisting_controller.rb
    def send_database_email
        @jobs = Job.all
        @user = current_user
        UserMailer.email_database(@user).deliver
        redirect_to joblisting_index_path
    end
    
end