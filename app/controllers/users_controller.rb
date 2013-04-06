class UsersController < ApplicationController
  def index 
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create 
    @user = User.new(params[:user])
    @user.project_id = params[:project_id]
    if @user.save
      redirect_to project_path(@user.project)
    else
      render :new
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
end
