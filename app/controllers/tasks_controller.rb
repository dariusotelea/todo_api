class TasksController < ApplicationController
  has_scope :by_tasktype_name
  has_scope :by_user_name
  has_scope :by_task_status
  has_scope :by_task_name
  has_scope :by_task_priority
  
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

  def create_report
    report = Report.new
    report.notify_on_slack
  end
end