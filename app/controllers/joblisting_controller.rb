class JoblistingController < ApplicationController
    def index
        @jobs = Job.all
    end
end