class ProjectTasksController < ApplicationController
  before_action :set_project, only: [:index, :create]
  before_action :set_project_task, only: [:show, :update, :destroy]

  # GET /todos/:todo_id/items
  def index
    json_response(@project.project_tasks)
  end

  # GET /todos/:todo_id/items/:id
  def show
    json_response(@project_task)
  end

  # POST /todos/:todo_id/items
  def create
    @project.project_tasks.create!(project_task_params)
    json_response(@project, :created)
  end

  # PUT /todos/:todo_id/items/:id
  def update
    @project_task.update(project_task_params)
    head :no_content
  end

  # DELETE /todos/:todo_id/items/:id
  def destroy
    @project_task.destroy
    head :no_content
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_project_task
    @project_task = @project.project_tasks.find_by!(id: params[:id]) if @project
  end

  def project_task_params
    params.permit(:task, :assigned_to)
  end
end
