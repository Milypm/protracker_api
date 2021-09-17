class DevTasksController < ApplicationController
  before_action :set_project_task, only: [:index, :create]
  before_action :set_dev_task, only: [:update, :destroy]

  # GET /todos/:todo_id/items
  def index
    json_response(@project_task.dev_task)
  end

  # GET /todos/:todo_id/items/:id
  # def show
  #   json_response(@dev_task)
  # end

  # POST /todos/:todo_id/items
  def create
    @project_task.dev_task.create!(dev_task_params)
    json_response(@project_task, :created)
  end

  # PUT /todos/:todo_id/items/:id
  def update
    @dev_task.update(dev_task_params)
    head :no_content
  end

  # DELETE /todos/:todo_id/items/:id
  def destroy
    @dev_task.destroy
    head :no_content
  end

  private

  def set_project_task
    # @project = Project.find(params[:project_id])
    @project_task = ProjectTask.find(params[:project_task_id])
  end

  def set_dev_task
    @dev_task = @project_task.dev_task.find_by!(id: params[:id]) if @project_task
  end

  def dev_task_params
    params.permit(:notes, :time, :user_id, :project_task_id)
  end
end
