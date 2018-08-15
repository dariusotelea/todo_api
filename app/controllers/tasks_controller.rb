class TasksController < ApplicationController
  has_scope :by_tasktype_id
  def index
    render json: apply_scopes(Task.all) 
  end

  def show
    task = Task.find(params[:id])
    render json: task
  end
  
  def create 
    task = Task.create(api_params(:name, :status, :priority, :tasktype_id, :user_id))
    raise unless task.persisted?
    render json: task
  end

  def update
    task = Task.find(params[:id])
    raise unless task.present?
    task.update(api_params(:name, :status, :priority, :tasktype_id, :user_id))
    render json: task
  end
  
  def destroy
    task = Task.find(params[:id])
    task.destroy
    render json: task
  end
end