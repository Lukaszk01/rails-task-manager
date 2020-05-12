class TasksController < ApplicationController
   # before_action :set_task, only: [:show, :edit, :update, :destroy]
  def new
    @tasks = Task.new
  end

  def create
   @task = Task.new(task_params)
    if @task.save
     redirect_to task_path(@task)
    else
      render :new
    end
  end

  def index
    @tasks = Task.all
  end

  def show
     @tasks = Task.find(params[:id])
  end

  def edit
     @tasks = Task.find(params[:id])
  end

  def update
    @tasks = Task.find(params[:id])
    if @tasks.update(task_params)
      redirect_to tasks_path(@tasks)
    else
      render :edit
    end
  end

  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to tasks_path
  end

  private
    # def set_task
    #   @task = Task.find(params[:id])
    # end

    def task_params
      params.require(:task).permit(:title, :details, :completed)
     end
end


