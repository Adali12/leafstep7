class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @task = Task.all
  
  end
  def new
    # add this
    @task =Task.new
  end
  def create
    @task=Task.create(task_params)
    if @task.save
      redirect_to tasks_path, notice:"record save succefull!!"
    else 
      render :new
    end
  end
  def show
    @task =Task.find(params[:id])
  end
  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path, notice: "You have edited this task！"
    else
      render :edit
    end
  end
  def destroy
    @task.destroy
    redirect_to tasks_path, notice: "You have deleted the task!"
  end
  private
  def task_params
    params.require(:task).permit(:name, :details)
  end
  def set_task
    @task = Task.find(params[:id])
  end
end
