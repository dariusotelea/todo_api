class TasktypesController < ApplicationController
  has_scope :by_tasktype_name
  
  def index
    render json: Tasktype.all
  end

  def show
    tasktype = Tasktype.find(params[:id])
    render json: tasktype
  end
  
  def create 
    tasktype = Tasktype.create api_params(:name, :icon)
    render json: tasktype
  end

  def update
    tasktype = Tasktype.find(params[:id])
    tasktype.update api_params(:name, :icon)
    render json: tasktype
  end
  
  def destroy
    tasktype = Tasktype.find(params[:id])
    tasktype.destroy
    render json: tasktype
  end
end