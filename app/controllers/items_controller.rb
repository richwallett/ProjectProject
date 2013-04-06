class ItemsController < ApplicationController
  def index 
    @items = Item.all
  end
  
  def show
    @item = Item.find(params[:id])
  end
  
  def new
    @item = Item.new
  end
  
  def create 
    @item = Item.new(params[:item])
    @item.project_id = params[:project_id]
    if @item.save
      redirect_to project_path(@item.project)
    else
      render :new
    end
  end
  
  def edit
    @item = Item.find(params[:id])
  end
end
