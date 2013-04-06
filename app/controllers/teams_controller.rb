class TeamsController < ApplicationController
  def index 
    @teams = Team.all
  end
  
  def new
    @team = Team.new
  end
  
  def create
    @team = Team.new(params[:team])
    if @team.save
      flash.notice = "Team '#{@team.name}' Created!"
      redirect_to team_url(@team)
    else
      render :new
    end
  end
  
  def show
    @team = Team.find(params[:id])
    @project = Project.new
    @project.team_id = @team.id
  end
  
  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_url
  end
  
  def edit
    @team = Team.find(params[:id])
  end
end
