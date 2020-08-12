require_dependency "samurai/tasks/application_controller"

module Samurai::Tasks
  class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]
  
    def index
      @tasks = Task.all
    end
    
    def show
      authorize! :manage, @task
    end
  
    def new
      @task = Task.new
    end
    
    def edit
      authorize! :manage, @task
    end
    
    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to [samurai, @task], notice: 'Task was successfully created.'
      else
        render :new
      end
    end
    
    def update
      if @task.update(task_params)
        redirect_to [samurai, @task], notice: 'Task was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      authorize! :manage, @task
      @task.destroy
      redirect_to samurai.tasks_url, notice: 'Task was successfully destroyed.'
    end
    
    private
      def set_task
        @task = Task.find(params[:id])
      end
      
      def task_params
        params.require(:task).permit(:title, :content, :user_id, :contact_id)
      end
  
  end
end