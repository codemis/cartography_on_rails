class ProjectsController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@projects = Project.all
	end
	
	def new
		@project = Project.new
	end
	
	def create
    @project = Project.new params[:project]
    if @project.save
      flash[:notice] = "The project has been added."
      redirect_to projects_path
    else
      render :action => :new
    end
	end
	
	def edit
		@project = Project.find(params[:id])
	end
	
	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(params[:project])
      flash[:notice] = "The project has been updated."
			redirect_to projects_path
    else
      render :action => :edit
    end
	end
	
	def show
		@project = Project.find(params[:id])
	end
	
end
