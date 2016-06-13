class JoblistingController < ApplicationController
    def index
        @jobs = Job.all
    end
    
    def job_params
        params.require(:jobs).permit(:companyName, :jobDescription, :language, :contactNumber, :contactName, :contactEmail)
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
    
    def new
        # default: render 'new' template
        
    end
    
end