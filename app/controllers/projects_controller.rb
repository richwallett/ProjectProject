class ProjectsController < ApplicationController
  def index 
    @projects = Project.all
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to project_url(@project)
    else 
      render :new
    end
  end
  
  def show
    @project = Project.find(params[:id])
    @item = Item.new
    @item.project_id = @project.id
  end
  
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_url
  end
  
  def edit
    @project = Project.find(params[:id])
  end
end
