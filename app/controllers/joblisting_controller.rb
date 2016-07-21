class JoblistingController < ApplicationController
    def index
        @jobs = Job.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
    end
    
    def job_params
        params.require(:jobs).permit(:dateCreated, :companyName, :jobTitle, :jobDescription, :language, :contactNumber, :contactName, :contactEmail)
    end
    
    def show
        id = params[:id]
        @jobs = Job.find(id)
    end
    
    def create
        @jobs = Job.create!(job_params)
        flash[:notice] = "Job Listing was successfully created!"
        redirect_to '/joblisting'
    end
    
    def edit
        @jobs = Job.find params[:id]
    end
    
    def update
        @jobs = Job.find params[:id]
        @jobs.update_attributes!(job_params)
        flash[:notice] = "#{@jobs.jobTitle} was successfully updated."
        redirect_to joblisting_path(@jobs)
    end
    
    def destroy
        @jobs = Job.find(params[:id])
        @jobs.destroy
        flash[:notice] = "Job '#{@jobs.jobTitle}' deleted."
        redirect_to joblisting_index_path
    end
    
    def new
        # default: render 'new' template
        
    end
    
end